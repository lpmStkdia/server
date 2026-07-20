import { RawPacket } from "@/features/dev/dev.packets";
import { GameClient } from "@/server/game.client";
import { GameServer } from "@/server/game.server";
import { IPacketHandler } from "@/shared/interfaces/ipacket-handler";
import logger from "@/utils/logger";
import { ChatHistory, SendChatMessage } from "./chat.packets";
import { IChatMessageData } from "./chat.types";
import { CommandContext } from "./commands/command.types";

/**
 * The client renders chat messages as HTML, so `<...>` in a command reply (e.g. usage strings like
 * "/mine <amount>") is swallowed as an unknown tag. Escape angle brackets/& so it shows literally.
 */
function escapeChatHtml(message: string): string {
    return message.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;");
}

export class SendChatMessageHandler implements IPacketHandler<SendChatMessage> {
    public readonly packetId = SendChatMessage.getId();

    public async execute(client: GameClient, server: GameServer, packet: SendChatMessage): Promise<void> {
        if (!client.user || !packet.message) {
            return;
        }

        const sendFlowReply = (message: string) => {
            client.sendPacket(new ChatHistory({ messages: [{ message, isSystem: true, isWarning: false, source: null, target: null }] }));
        };

        if (client.isInFlowMode && !packet.message.startsWith("/")) {
            const packetIdStr = packet.message.trim();
            const packetId = parseInt(packetIdStr, 10);

            if (isNaN(packetId)) {
                sendFlowReply("Invalid packet ID. Must be a number.");
                return;
            }

            const targetIdentifier = client.flowTarget!;
            const payloadHex = client.flowPayloadHex!;
            let payload: Buffer;

            try {
                payload = Buffer.from(payloadHex, "hex");
            } catch (error) {
                sendFlowReply("Error: Invalid hexadecimal payload set in the flow.");
                return;
            }

            const packetToSend = new RawPacket(packetId, payload);
            let replyMessage = "";

            if (targetIdentifier.toLowerCase() === "all") {
                server.broadcastToAll(packetToSend);
                replyMessage = `Flow: Packet ${packetId} sent to all clients.`;
            } else {
                const targetClient = server.findClientByIp(targetIdentifier) || server.findClientByUsername(targetIdentifier);
                if (targetClient) {
                    targetClient.sendPacket(packetToSend);
                    replyMessage = `Flow: Packet ${packetId} sent to ${targetIdentifier}.`;
                } else {
                    replyMessage = `Flow: Error: Client "${targetIdentifier}" not found.`;
                }
            }

            sendFlowReply(replyMessage);
            return;
        }

        if (packet.message.startsWith("/")) {
            const replyFunction = (message: string) => {
                const replyData: IChatMessageData = {
                    message: escapeChatHtml(message),
                    isSystem: true,
                    isWarning: false,
                    source: null,
                    target: null,
                };
                const replyPacket = new ChatHistory({ messages: [replyData] });
                client.sendPacket(replyPacket);
            };

            const context: CommandContext = {
                executor: client,
                server: server,
                reply: replyFunction,
            };
            await server.commandService.process(packet.message, context);
            return;
        }

        // Staff mute: silenced users can't post chat messages (commands above still work).
        if (client.user.mutedUntil && client.user.mutedUntil > new Date()) {
            const minutesLeft = Math.ceil((client.user.mutedUntil.getTime() - Date.now()) / 60000);
            const reason = (client.user as any).mutedReason || null;
            const msg = `You are muted for ${minutesLeft} more minute(s).${reason ? ' Reason: ' + reason : ''}`;
            client.sendPacket(new ChatHistory({ messages: [{ message: msg, isSystem: true, isWarning: false, source: null, target: null }] }));
            return;
        }

        const configService = server.configService;
        if (configService.getChatAntifloodEnabled()) {
            const cooldown = packet.message.length * configService.getChatCharDelayFactor() + configService.getChatMessageBaseDelay();

            const now = Date.now();
            const lastMessageTime = client.user.lastMessageTimestamp?.getTime() || 0;

            if (now - lastMessageTime < cooldown) {
                logger.warn(`User ${client.user.username} is sending messages too fast.`, { client: client.getRemoteAddress() });
                return;
            }
        }

        const populatedMessage = await server.chatService.postMessage(client.user, packet.targetNickname, packet.message, server.lobbyService);

        const messageData: IChatMessageData = {
            message: populatedMessage.message,
            isSystem: populatedMessage.isSystemMessage,
            isWarning: populatedMessage.isWarning,
            source: populatedMessage.sourceUser
                ? {
                    uid: populatedMessage.sourceUser.username,
                    rank: populatedMessage.sourceUser.rank,
                    moderatorLevel: populatedMessage.sourceUser.chatModeratorLevel,
                    ip: null,
                }
                : null,
            target: populatedMessage.targetUser
                ? {
                    uid: populatedMessage.targetUser.username,
                    rank: populatedMessage.targetUser.rank,
                    moderatorLevel: populatedMessage.targetUser.chatModeratorLevel,
                    ip: null,
                }
                : null,
        };

        const packetToSend = new ChatHistory({ messages: [messageData] });
        server.broadcastToLobbyChat(packetToSend);
    }
}
