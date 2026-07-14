import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel, chatModeratorPower } from "@/shared/models/enums/chat-moderator-level.enum";
import { RemoveUserChatMessagesPacket } from "@/features/chat/chat.packets";

/**
 * Removes ALL of a user's chat messages — from the history (DB) and from every client's screen —
 * WITHOUT muting them (they can still talk). For spam cleanup. Hierarchy guard like /mute.
 *
 * With no username: wipes the ENTIRE chat (every message from every user, DB + all clients' screens).
 */
export default class ClearMessagesCommand implements ICommand {
    name = "clearmsgs";
    description = "Removes chat messages: a specific user's (does not mute), or the whole chat if no username is given. Usage: /clearmsgs [username].";
    permissionLevel = ChatModeratorLevel.MODERATOR;
    usage = "[username]";
    example = "/clearmsgs Joao";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        // No username → clear the entire chat for everyone.
        if (args.length < 1) {
            const { deletedCount, usernames } = await context.server.chatService.removeAllMessages();
            for (const username of usernames) {
                const clearPacket = new RemoveUserChatMessagesPacket({ nickname: username });
                for (const c of context.server.getClients()) c.sendPacket(clearPacket);
            }

            context.reply(`Entire chat cleared (${deletedCount} message(s) from ${usernames.length} sender(s) removed).`);
            return;
        }

        const online = context.server.findClientByUsername(args[0]);
        const user = online?.user ?? (await context.server.userService.findUserByUsername(args[0]));
        if (!user) {
            context.reply(`User "${args[0]}" not found.`);
            return;
        }
        if (chatModeratorPower(user.chatModeratorLevel) >= chatModeratorPower(context.executor.user!.chatModeratorLevel)) {
            context.reply(`You cannot clear messages of ${user.username} (role equal or higher than yours).`);
            return;
        }

        const removed = await context.server.chatService.removeUserMessages(user);
        const removePacket = new RemoveUserChatMessagesPacket({ nickname: user.username });
        for (const c of context.server.getClients()) c.sendPacket(removePacket);

        context.reply(`Messages of ${user.username} removed (${removed} from history).`);
    }
}
