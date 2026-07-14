import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

const MODES = ["dm", "tdm", "ctf", "cp", "as"] as const;
const TYPES = ["normal", "xpbp", "parkour"] as const;

/** Debug: dumps a user's persisted long-term stats (see StatsService). `/stats` for self, `/stats <username>`
 *  for someone else. Read-only; shows the last flushed values (NOT the current in-progress round). */
export default class StatsCommand implements ICommand {
    name: string = "stats";
    description: string = "Shows long-term statistics. Usage: /stats [username] (empty = you).";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.NONE;
    usage = "[username]";
    example = "/stats Joao";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const target = args.length >= 1
            ? await context.server.userService.findUserByUsername(args[0])
            : context.executor.user;
        if (!target) {
            context.reply(`User "${args[0]}" not found.`);
            return;
        }

        const st: any = target.stats;
        const counters: Map<string, number> = st?.counters ?? new Map();
        const c = (key: string): number => counters.get(key) ?? 0;
        const s = (field: string): number => st?.[field] ?? 0;
        const ratio = (a: number, b: number): string => (b > 0 ? (a / b).toFixed(2) : a.toFixed(2));

        const kills = c("kills");
        const deaths = c("deaths");
        const wins = c("wins");
        const losses = c("losses");

        context.reply(`=== Stats for ${target.username} (persisted, excluding the current round) ===`);
        context.reply(
            `Matches: ${c("battles_played")} | Wins: ${wins} | Losses: ${losses} | W/L: ${ratio(wins, losses)}`
        );
        context.reply(
            `Kills: ${kills} | Deaths: ${deaths} | K/D: ${ratio(kills, deaths)} | Suicides: ${c("suicides")}`
        );
        context.reply(
            `XP: ${c("xp_earned")} | Crystals: ${c("crystals_earned")} | Damage dealt/taken: ${c("damage_dealt")}/${c("damage_taken")}`
        );
        context.reply(
            `Supplies used: ${c("supplies_used")} (mines: ${c("mines_used")}) | Picked up: ${c("supplies_picked")}`
        );
        context.reply(
            `Per-match records — kills: ${s("maxKillsInBattle")}, deaths: ${s("maxDeathsInBattle")}, crystals: ${s("maxCrystalsInBattle")}, xp: ${s("maxXpInBattle")}, damage: ${s("maxDamageInBattle")}`
        );
        context.reply(
            `Streaks — wins: ${s("currentWinStreak")} (max ${s("maxWinStreak")}) | losses: ${s("currentLossStreak")} (max ${s("maxLossStreak")})`
        );

        // Per-mode breakdown (only modes actually played), each split by type when present.
        const perMode: string[] = [];
        for (const m of MODES) {
            const played = c(`battles_played:${m}`);
            if (played <= 0) continue;
            const typeParts = TYPES.map((t) => {
                const n = c(`battles_played:${m}:${t}`);
                return n > 0 ? `${t} ${n}` : null;
            }).filter(Boolean);
            perMode.push(
                `  ${m.toUpperCase()}: ${played}p W${c(`wins:${m}`)}/L${c(`losses:${m}`)} K${c(`kills:${m}`)}/D${c(`deaths:${m}`)}` +
                    (typeParts.length ? ` [${typeParts.join(", ")}]` : "")
            );
        }
        if (perMode.length) {
            context.reply("By mode (matches, W/L, K/D):");
            for (const line of perMode) context.reply(line);
        }
    }
}
