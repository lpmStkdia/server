import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel, chatModeratorPower } from "@/shared/models/enums/chat-moderator-level.enum";

/** Drops a player's connection. Staff can't kick someone of equal/higher role. */
export default class KickCommand implements ICommand {
    name = "kick";
    description = "Disconnects a player. Usage: /kick <username>.";
    permissionLevel = ChatModeratorLevel.MODERATOR;
    usage = "<username>";
    example = "/kick Joao";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        if (args.length < 1) {
            context.reply("Usage: /kick <username>.");
            return;
        }
        const target = context.server.findClientByUsername(args[0]);
        if (!target?.user) {
            context.reply(`Player "${args[0]}" is not online.`);
            return;
        }
        if (target === context.executor) {
            context.reply("You cannot kick yourself.");
            return;
        }
        // Hierarchy guard: only someone with strictly MORE power can be kicked.
        if (chatModeratorPower(target.user.chatModeratorLevel) >= chatModeratorPower(context.executor.user!.chatModeratorLevel)) {
            context.reply(`You cannot kick ${target.user.username} (role equal or higher than yours).`);
            return;
        }
        const name = target.user.username;
        target.closeConnection();
        context.reply(`${name} was disconnected.`);
    }
}
