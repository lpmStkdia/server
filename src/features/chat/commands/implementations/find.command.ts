import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Tells which battle a player is in and their current coordinates. */
export default class FindCommand implements ICommand {
    name = "find";
    description = "Shows which battle a player is in and their coordinates. Usage: /find <username>.";
    permissionLevel = ChatModeratorLevel.MODERATOR;
    usage = "<username>";
    example = "/find Joao";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        if (args.length < 1) {
            context.reply("Usage: /find <username>.");
            return;
        }
        const target = context.server.findClientByUsername(args[0]);
        if (!target?.user) {
            context.reply(`Player "${args[0]}" is not online.`);
            return;
        }
        if (!target.currentBattle) {
            context.reply(`${target.user.username} is online, not in a match.`);
            return;
        }
        const pos = target.battlePosition;
        const where = pos ? ` em x=${Math.round(pos.x)} y=${Math.round(pos.y)} z=${Math.round(pos.z)}` : " (fora de campo)";
        context.reply(`${target.user.username} is in match ${target.currentBattle.battleId}${target.isSpectator ? " as spectator" : ""}${where}.`);
    }
}
