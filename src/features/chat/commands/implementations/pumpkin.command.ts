import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Admin command: drops N pumpkin boxes. Works in any map mode, even parkour.
 *  Usage: /pumpkin [count] (1 to 10, default 1). */
export default class PumpkinCommand implements ICommand {
    name = "pumpkin";
    description = "Spawns pumpkin boxes (1-10 max). Works in any map mode including parkour. Usage: /pumpkin [count].";
    permissionLevel = ChatModeratorLevel.CANDIDATE;
    usage = "[count]";
    example = "/pumpkin 3";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const client = context.executor;
        if (!client.user || !client.currentBattle) {
            context.reply("You must be in a match.");
            return;
        }

        let count = 1;
        if (args[0] !== undefined) {
            count = Number(args[0]);
            if (!Number.isInteger(count) || count < 1 || count > 10) {
                context.reply("Invalid amount (1 to 10). Usage: /pumpkin [count].");
                return;
            }
        }

        context.server.battleService.bonus.announceBonusDrops(client.currentBattle, "pumpkin", count);
        context.reply(`${count} pumpkin box(es) scheduled (will fall in 30-50 seconds).`);
    }
}
