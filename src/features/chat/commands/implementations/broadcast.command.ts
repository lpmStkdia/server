import { BattleSystemMessagePacket } from "@/features/battle/battle.packets";
import { ChatHistory } from "@/features/chat/chat.packets";
import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Sends a system message to EVERYONE — lobby/garage chat listeners get the system chat entry, players
 *  currently in a battle get it on the battle chat (nickname-less general message). */
export default class BroadcastCommand implements ICommand {
    name = "broadcast";
    description = "Sends a system message to all players. Usage: /broadcast <message>.";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.ADMINISTRATOR;
    usage = "<message>";
    example = "/broadcast Maintenance in 10 minutes";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const message = args.join(" ").trim();
        if (!message) {
            context.reply("Usage: /broadcast <message>.");
            return;
        }

        context.server.broadcastToLobbyChat(
            new ChatHistory({ messages: [{ message, isSystem: true, isWarning: true, source: null, target: null }] })
        );
        for (const client of context.server.getClients()) {
            if (client.user && client.currentBattle) {
                client.sendPacket(new BattleSystemMessagePacket({ message: message }));
            }
        }
        context.reply("Message sent to all players.");
    }
}
