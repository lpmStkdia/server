import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Lifts a user's punishment so they can log in again. */
export default class UnbanCommand implements ICommand {
    name = "unban";
    description = "Removes a user's ban. Usage: /unban <username>.";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.ADMINISTRATOR;
    usage = "<username>";
    example = "/unban Joao";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        if (args.length < 1) {
            context.reply("Usage: /unban <username>.");
            return;
        }
        const user = await context.server.userService.findUserByUsername(args[0]);
        if (!user) {
            context.reply(`User "${args[0]}" not found.`);
            return;
        }
        if (!user.isPunished) {
            context.reply(`${user.username} is not banned.`);
            return;
        }
        user.isPunished = false;
        user.punishmentExpiresAt = null;
        user.punishmentReason = null;
        await user.save();
        context.reply(`Ban removed for ${user.username}.`);
    }
}
