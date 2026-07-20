import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Toggles the current battle's map boundary (kill/kick) zones. `off` lets tanks roam outside the
 *  playable shell (parkour exploration/tests); `on` restores the normal limits. No argument = show state. */
export default class BoundsCommand implements ICommand {
    name = "bounds";
    description = "Enables/disables map bounds (kill/kick zones) for the current match. Usage: /bounds [on/off].";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.ADMINISTRATOR;
    usage = "[on/off]";
    example = "/bounds off";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const battle = context.executor.currentBattle;
        if (!context.executor.user || !battle) {
            context.reply("You must be in a match.");
            return;
        }

        const arg = (args[0] ?? "").toLowerCase();
        if (arg !== "on" && arg !== "off") {
            context.reply(`Map bounds: ${battle.boundsDisabled ? "DISABLED" : "enabled"}. Usage: /bounds [on/off].`);
            return;
        }

        battle.boundsDisabled = arg === "off";
        context.reply(
            battle.boundsDisabled
                ? "Limites do mapa DESATIVADOS — tanques podem sair da área jogável."
                : "Limites do mapa reativados."
        );
    }
}
