import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel, chatModeratorPower } from "@/shared/models/enums/chat-moderator-level.enum";
import { RemoveUserChatMessagesPacket } from "@/features/chat/chat.packets";

/** Silences a user's chat (lobby + battle) for N minutes; commands keep working. Persisted, so it
 *  survives relogin. Hierarchy guard like /kick. */
export default class MuteCommand implements ICommand {
    name = "mute";
    description = "Mutes a user's chat for N minutes (commands still work). Usage: /mute <username> <min>.";
    permissionLevel = ChatModeratorLevel.MODERATOR;
    usage = "<username> <min>";
    example = "/mute Joao 30";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const minutes = parseFloat(args[1]);
        if (args.length < 2 || isNaN(minutes) || minutes <= 0) {
            context.reply("Usage: /mute <username> <min>.");
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

        user.mutedUntil = new Date(Date.now() + minutes * 60000);
        await user.save();
        if (online?.user && online.user !== user) online.user.mutedUntil = user.mutedUntil;

        // Clears the muted user's already-sent spam: deletes it from the history (DB) and removes it
        // from everyone's screen (not just silences future messages) — so it won't reappear for anyone
        // reloading the chat.
        await context.server.chatService.removeUserMessages(user);
        const removePacket = new RemoveUserChatMessagesPacket({ nickname: user.username });
        for (const c of context.server.getClients()) c.sendPacket(removePacket);

        context.reply(`${user.username} muted for ${minutes} minute(s).`);
    }
}
