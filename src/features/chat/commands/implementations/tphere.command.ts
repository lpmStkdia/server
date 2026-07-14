import { teleportTank } from "@/features/battle/teleport.util";
import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Teleports another player to the caller's position. Usage: /tphere <username> (case-insensitive). */
export default class TpHereCommand implements ICommand {
    name = "tphere";
    description = "Brings another player to your position. Usage: /tphere <username>.";
    permissionLevel = ChatModeratorLevel.MODERATOR;
    usage = "<username>";
    example = "/tphere Joao";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const client = context.executor;
        const { server } = context;
        if (!client.user || !client.currentBattle) {
            context.reply("You must be in a match.");
            return;
        }

        if (args.length < 1) {
            context.reply("Usage: /tphere <username>.");
            return;
        }

        if (!client.battlePosition) {
            context.reply("You are not on the field.");
            return;
        }

        const target = server.findClientByUsername(args[0]);
        if (!target || target.currentBattle?.battleId !== client.currentBattle.battleId) {
            context.reply(`Player "${args[0]}" is not in this match.`);
            return;
        }

        teleportTank(target, client.battlePosition);
        context.reply(`Bringing ${target.user?.username} to you...`);
    }
}
