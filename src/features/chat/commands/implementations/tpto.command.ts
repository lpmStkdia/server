import { teleportTank } from "@/features/battle/teleport.util";
import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Teleports the caller to another player's position. Usage: /tpto <username> (case-insensitive). */
export default class TpToCommand implements ICommand {
    name = "tpto";
    description = "Teleports you to another player's position. Usage: /tpto <username>.";
    permissionLevel = ChatModeratorLevel.MODERATOR;
    usage = "<username>";
    example = "/tpto Joao";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const client = context.executor;
        const { server } = context;
        if (!client.user || !client.currentBattle) {
            context.reply("You must be in a match.");
            return;
        }

        if (args.length < 1) {
            context.reply("Usage: /tpto <username>.");
            return;
        }

        const target = server.findClientByUsername(args[0]);
        if (!target || target.currentBattle?.battleId !== client.currentBattle.battleId) {
            context.reply(`Player "${args[0]}" is not in this match.`);
            return;
        }
        if (!target.battlePosition) {
            context.reply(`"${target.user?.username}" is not on the field.`);
            return;
        }

        teleportTank(client, target.battlePosition);
        context.reply(`Teleporting to ${target.user?.username}...`);
    }
}
