import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Admin command: drops N gold boxes with siren announcement. Works in any map mode, even parkour.
 *  Usage: /gold [count] (1 to 10, default 1). */
export default class GoldCommand implements ICommand {
    name = "gold";
    description = "Spawns gold boxes with siren announcement (1-10 max). Works in any map mode including parkour. Usage: /gold [count].";
    permissionLevel = ChatModeratorLevel.CANDIDATE;
    usage = "[count]";
    example = "/gold 5";

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
                context.reply("Invalid amount (1 to 10). Usage: /gold [count].");
                return;
            }
        }

        context.server.battleService.bonus.announceGoldBoxDrops(client.currentBattle, count);
        context.reply(`${count} gold box drop(s) announced (will fall in 30-50 seconds).`);
    }
}
