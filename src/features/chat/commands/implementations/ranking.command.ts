import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** /ranking — mostra a classificação da ranqueada (XP/BP): sua posição + o top 10. */
export default class RankingCommand implements ICommand {
    name = "ranking";
    description = "Shows the Competitive Match ranking (your position + top 10).";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.MODERATOR;

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const svc = context.server.rankedService;
        if (!svc) {
            context.reply("Ranked unavailable.");
            return;
        }
        // /ranking [1v1|2v2] — padrão 1v1.
        const mode = args[0] === "2v2" ? "2v2" : "1v1";
        const userId = context.executor.user?.id;
        const [top, you] = await Promise.all([
            svc.getLeaderboard(mode, 10),
            userId ? svc.getPlayerPosition(userId, mode) : Promise.resolve(null),
        ]);

        context.reply(`=== Ranking · XP/BP ${mode} ===`);
        if (you) context.reply(`You: #${you.rank} of ${you.total} · MMR ${you.mmr}`);
        else context.reply("You are not ranked yet (play a ranked match).");

        if (top.length === 0) {
            context.reply("No one ranked yet.");
            return;
        }
        top.forEach((p, i) => {
            context.reply(`#${i + 1} ${p.username} — ${p.mmr} MMR (${p.wins}W/${p.losses}L)`);
        });
    }
}
