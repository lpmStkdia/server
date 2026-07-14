import { BattleMode } from "@/features/battle/battle.model";
import { teleportTank } from "@/features/battle/teleport.util";
import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Teleports the caller to a CTF flag's current position. Usage: /tpflag <red|blue>. */
export default class TpFlagCommand implements ICommand {
    name = "tpflag";
    description = "Teleports you to the flag position. Usage: /tpflag <red|blue>.";
    permissionLevel = ChatModeratorLevel.MODERATOR;
    usage = "[red/blue]";
    example = "/tpflag red";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const client = context.executor;
        const battle = client.currentBattle;
        if (!client.user || !battle) {
            context.reply("You must be in a match.");
            return;
        }

        if (battle.settings.battleMode !== BattleMode.CTF) {
            context.reply("This match is not Capture the Flag.");
            return;
        }

        const which = (args[0] ?? "").toLowerCase();
        const isRed = which === "red" || which === "r";
        const isBlue = which === "blue" || which === "b";
        if (!isRed && !isBlue) {
            context.reply("Usage: /tpflag <red|blue>.");
            return;
        }

        const flagPosition = isRed ? battle.flagPositionRed : battle.flagPositionBlue;
        const flagName = isRed ? "red" : "blue";
        if (!flagPosition) {
            context.reply(`The ${flagName} flag is being carried.`);
            return;
        }

        teleportTank(client, flagPosition);
        context.reply(`Teleporting to the ${flagName} flag...`);
    }
}
