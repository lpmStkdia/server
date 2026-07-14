import { HEAL_MAX_GIVEN } from "@/features/battle/supply.service";
import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Starts a free full repair-kit regen on a tank — yours by default, or another player's in the same battle. */
export default class HealCommand implements ICommand {
    name = "heal";
    description = "Heals a tank (full kit regeneration, free; empty = you). Usage: /heal [username].";
    permissionLevel = ChatModeratorLevel.MODERATOR;
    usage = "[username]";
    example = "/heal Joao";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const client = context.executor;
        const { server } = context;
        if (!client.user || !client.currentBattle) {
            context.reply("You must be in a match.");
            return;
        }

        let target = client;
        if (args.length >= 1) {
            const found = server.findClientByUsername(args[0]);
            if (!found?.user || found.currentBattle?.battleId !== client.currentBattle.battleId) {
                context.reply(`Player "${args[0]}" is not in this match.`);
                return;
            }
            target = found;
        }
        if (target.battleState !== "active") {
            context.reply(`${target.user?.username} does not have an active tank on the field.`);
            return;
        }

        server.battleService.supply.startHealing(target, client.currentBattle, HEAL_MAX_GIVEN.INVENTORY);
        context.reply(`Healing ${target.user?.username}.`);
    }
}
