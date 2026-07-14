import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Resumes a battle frozen by /pause. */
export default class ResumeCommand implements ICommand {
    name = "resume";
    description = "Resumes a match paused with /pause. Usage: /resume.";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.ADMINISTRATOR;
    example = "/resume";

    async execute(context: CommandContext, _args: string[]): Promise<void> {
        const battle = context.executor.currentBattle;
        if (!context.executor.user || !battle) {
            context.reply("You must be in a match.");
            return;
        }
        if (!battle.paused) {
            context.reply("Match is not paused.");
            return;
        }
        battle.paused = false;
        context.reply(`Match ${battle.battleId} resumed.`);
    }
}
