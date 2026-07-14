import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Lifts a user's chat mute. */
export default class UnmuteCommand implements ICommand {
    name = "unmute";
    description = "Removes a user's chat mute. Usage: /unmute <username>.";
    permissionLevel = ChatModeratorLevel.MODERATOR;
    usage = "<username>";
    example = "/unmute John";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        if (args.length < 1) {
            context.reply("Usage: /unmute <username>.");
            return;
        }
        const online = context.server.findClientByUsername(args[0]);
        const user = online?.user ?? (await context.server.userService.findUserByUsername(args[0]));
        if (!user) {
            context.reply(`User "${args[0]}" not found.`);
            return;
        }
        if (!user.mutedUntil || user.mutedUntil <= new Date()) {
            context.reply(`${user.username} is not muted.`);
            return;
        }
        user.mutedUntil = null;
        await user.save();
        if (online?.user && online.user !== user) online.user.mutedUntil = null;
        context.reply(`Mute removed for ${user.username}.`);
    }
}
