import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

const EFFECT_TYPES = ["n2o", "double_damage", "armor"] as const;

/** Applies a supply buff for free (no inventory cost) — to yourself or another player in the battle. */
export default class EffectCommand implements ICommand {
    name = "effect";
    description = "Applies a free supply buff (empty = you). Usage: /effect <type> [username].";
    permissionLevel = ChatModeratorLevel.MODERATOR;
    usage = "<n2o/double_damage/armor> [username]";
    example = "/effect n2o Joao";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const client = context.executor;
        const { server } = context;
        if (!client.user || !client.currentBattle) {
            context.reply("You must be in a match.");
            return;
        }

        const type = (args[0] ?? "").toLowerCase();
        if (!(EFFECT_TYPES as readonly string[]).includes(type)) {
            context.reply(`Invalid type. Use one of: ${EFFECT_TYPES.join(", ")}.`);
            return;
        }

        let target = client;
        if (args.length >= 2) {
            const found = server.findClientByUsername(args[1]);
            if (!found?.user || found.currentBattle?.battleId !== client.currentBattle.battleId) {
                context.reply(`Player "${args[1]}" is not in this match.`);
                return;
            }
            target = found;
        }
        if (target.battleState !== "active") {
            context.reply(`${target.user?.username} does not have an active tank on the field.`);
            return;
        }

        server.battleService.supply.applyEffect(target, client.currentBattle, type);
        context.reply(`Applied ${type} effect to ${target.user?.username}.`);
    }
}
