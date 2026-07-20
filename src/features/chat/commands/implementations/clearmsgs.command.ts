import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel, chatModeratorPower } from "@/shared/models/enums/chat-moderator-level.enum";
import { RemoveUserChatMessagesPacket } from "@/features/chat/chat.packets";

/**
 * Remove TODAS as mensagens de chat de um usuário — do histórico (DB) e das telas de todos os clientes —
 * SEM silenciá-lo (ele continua podendo falar). Para spam/limpeza pontual. Guard de hierarquia como o /mute.
 */
export default class ClearMessagesCommand implements ICommand {
    name = "clearmsgs";
    description = "Removes all messages from a user's chat (does not mute). Usage: /clearmsgs <username>.";
    permissionLevel = ChatModeratorLevel.MODERATOR;
    usage = "<username>";
    example = "/clearmsgs Joao";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        if (args.length < 1) {
            context.reply("Usage: /clearmsgs <username>.");
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
