import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Wipes a user's long-term stats (kills/deaths/streaks/records). Rank/crystals/garage untouched. */
export default class ResetStatsCommand implements ICommand {
    name = "resetstats";
    description = "Wipes a user's long-term statistics. Usage: /resetstats <username>.";
    permissionLevel = ChatModeratorLevel.ADMINISTRATOR;
    usage = "<username>";
    example = "/resetstats Joao";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        if (args.length < 1) {
            context.reply("Usage: /resetstats <username>.");
            return;
        }
        const online = context.server.findClientByUsername(args[0]);
        const user = online?.user ?? (await context.server.userService.findUserByUsername(args[0]));
        if (!user) {
            context.reply(`User "${args[0]}" not found.`);
            return;
        }

        user.stats.counters.clear();
        user.stats.maxKillsInBattle = 0;
        user.stats.maxDeathsInBattle = 0;
        user.stats.maxCrystalsInBattle = 0;
        user.stats.maxXpInBattle = 0;
        user.stats.maxDamageInBattle = 0;
        user.stats.currentWinStreak = 0;
        user.stats.maxWinStreak = 0;
        user.stats.currentLossStreak = 0;
        user.stats.maxLossStreak = 0;
        user.markModified("stats");
        await user.save();
        context.reply(`${user.username}'s statistics were reset.`);
    }
}
