import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel, chatModeratorPower } from "@/shared/models/enums/chat-moderator-level.enum";
import { RemoveUserChatMessagesPacket } from "@/features/chat/chat.packets";

/** Silences a user's chat (lobby + battle) for N minutes; commands keep working. Persisted, so it
 *  survives relogin. Hierarchy guard like /kick. */
export default class MuteCommand implements ICommand {
    name = "mute";
    description = "Mutes a user's chat for N minutes (commands still work). Usage: /mute <username> <min> [reason].";
    permissionLevel = ChatModeratorLevel.MODERATOR;
    usage = "<username> <min> [reason]";
    example = "/mute Joao 30 Spamming in chat";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const minutes = parseFloat(args[1]);
        if (args.length < 2 || isNaN(minutes) || minutes <= 0) {
            context.reply("Usage: /mute <username> <min> [reason].");
            return;
        }

        const online = context.server.findClientByUsername(args[0]);
        const user = online?.user ?? (await context.server.userService.findUserByUsername(args[0]));
        if (!user) {
            context.reply(`User "${args[0]}" not found.`);
            return;
        }
        if (user.id === context.executor.user!.id) {
            context.reply("You cannot mute yourself.");
            return;
        }
        if (chatModeratorPower(user.chatModeratorLevel) >= chatModeratorPower(context.executor.user!.chatModeratorLevel)) {
            context.reply(`You cannot mute ${user.username} (role equal or higher than yours).`);
            return;
        }

        const reason = args.length > 2 ? args.slice(2).join(" ") : null;
        user.mutedUntil = new Date(Date.now() + minutes * 60000);
        (user as any).mutedReason = reason;
        await user.save();
        if (online?.user && online.user !== user) {
            online.user.mutedUntil = user.mutedUntil;
            (online.user as any).mutedReason = reason;
        }

        // Clears the muted user's already-sent spam: deletes it from the history (DB) and removes it
        // from everyone's screen (not just silences future messages) — so it won't reappear for anyone
        // reloading the chat.
        await context.server.chatService.removeUserMessages(user);
        const removePacket = new RemoveUserChatMessagesPacket({ nickname: user.username });
        for (const c of context.server.getClients()) c.sendPacket(removePacket);

        context.reply(`${user.username} muted for ${minutes} minute(s).${reason ? ' Reason: ' + reason : ''}`);

        // Notify the muted user directly, if online
        if (online) {
            try {
                const minutesLeft = Math.ceil((user.mutedUntil!.getTime() - Date.now()) / 60000);
                const msg = `You are muted for ${minutesLeft} more minute(s).${reason ? ' Reason: ' + reason : ''}`;
                online.sendPacket(new RemoveUserChatMessagesPacket({ nickname: user.username }));
                online.sendPacket(new (await import("@/features/chat/chat.packets")).ChatHistory({ messages: [{ message: msg, isSystem: true, isWarning: false, source: null, target: null }] }));
            } catch (err) {
                // best-effort notify
            }
        }
    }
}
