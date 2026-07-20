import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Fun: rolls a random number 1..max (default 100). */
export default class RollCommand implements ICommand {
    name = "roll";
    description = "Rolls a number from 1 to max (default 100). Usage: /roll [max].";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.MODERATOR;
    usage = "[max]";
    example = "/roll 6";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const max = Math.max(2, Math.floor(Number(args[0]) || 100));
        const value = 1 + Math.floor(Math.random() * max);
        context.reply(`${context.executor.user?.username} rolled ${value} (1-${max}).`);
    }
}
