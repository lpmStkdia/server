import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Freezes the battle's gameplay interactions: no damage/kills, no flag/mine/zone triggers. Movement
 *  still relays and the round clock keeps ticking. Undo with /resume. */
export default class PauseCommand implements ICommand {
    name = "pause";
    description = "Pauses combat in the current match (no damage/kills/flags/mines). Usage: /pause.";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.ADMINISTRATOR;
    example = "/pause";

    async execute(context: CommandContext, _args: string[]): Promise<void> {
        const battle = context.executor.currentBattle;
        if (!context.executor.user || !battle) {
            context.reply("You must be in a match.");
            return;
        }
        if (battle.paused) {
            context.reply("Match is already paused. Use /resume to resume.");
            return;
        }
        battle.paused = true;
        context.reply(`Match ${battle.battleId} PAUSED (combat frozen; movement continues).`);
    }
}
