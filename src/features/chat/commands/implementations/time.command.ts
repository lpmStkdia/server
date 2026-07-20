import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Sets the current round's remaining time (re-syncs everyone's clock + the time-up trigger). */
export default class TimeCommand implements ICommand {
    name = "time";
    description = "Define o tempo restante do round atual, em segundos. Uso: /time <seconds>.";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.ADMINISTRATOR;
    usage = "<seconds>";
    example = "/time 300";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const battle = context.executor.currentBattle;
        if (!context.executor.user || !battle) {
            context.reply("You must be in a match.");
            return;
        }
        const seconds = parseInt(args[0], 10);
        if (isNaN(seconds) || seconds <= 0) {
            context.reply("Usage: /time <seconds> (positive number).");
            return;
        }

        context.server.battleService.setRoundTimeLeft(battle, seconds);
        context.reply(`Time remaining in round: ${seconds}s.`);
    }
}
