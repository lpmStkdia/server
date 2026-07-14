import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Restarts the current battle's round on the spot (scores/flags/fund reset, sides swap, everyone respawns). */
export default class RestartCommand implements ICommand {
    name = "restart";
    description = "Restarts the current match round (score resets, everyone respawns). Usage: /restart.";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.ADMINISTRATOR;
    example = "/restart";

    async execute(context: CommandContext, _args: string[]): Promise<void> {
        const battle = context.executor.currentBattle;
        if (!context.executor.user || !battle) {
            context.reply("You must be in a match.");
            return;
        }
        context.server.battleService.restartBattle(battle);
        context.reply(`Match ${battle.battleId} round restarted.`);
    }
}
