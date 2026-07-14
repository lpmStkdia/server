import { SetCtfScorePacket } from "@/features/battle/battle.packets";
import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Sets the team scores of the current battle (team modes; RED=0, BLUE=1 on the wire). */
export default class SetScoreCommand implements ICommand {
    name = "setscore";
    description = "Sets the team scores of the current battle (team modes). Usage: /setscore <red> <blue>.";
    permissionLevel = ChatModeratorLevel.ADMINISTRATOR;
    usage = "<red> <blue>";
    example = "/setscore 5 3";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const battle = context.executor.currentBattle;
        if (!context.executor.user || !battle) {
            context.reply("You must be in a battle.");
            return;
        }
        if (!battle.isTeamMode()) {
            context.reply("This battle is not a team mode.");
            return;
        }
        const red = parseInt(args[0], 10);
        const blue = parseInt(args[1], 10);
        if (isNaN(red) || isNaN(blue) || red < 0 || blue < 0) {
            context.reply("Usage: /setscore <red> <blue> (numbers >= 0).");
            return;
        }

        battle.scoreRed = red;
        battle.scoreBlue = blue;
        battle.broadcast(new SetCtfScorePacket({ team: 0, score: red }));
        battle.broadcast(new SetCtfScorePacket({ team: 1, score: blue }));
        context.reply(`Score set: red ${red} × ${blue} blue.`);
    }
}
