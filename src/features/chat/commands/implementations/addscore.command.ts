import { MAX_COMMAND_SCORE } from "@/config/rank.data";
import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { GarageWorkflow } from "@/features/garage/garage.workflow";
import { UpdateRankPacket, UpdateScorePacket } from "@/features/profile/profile.packets";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";
import { broadcastPlayerRankToOthers } from "@/features/profile/rank.notify";

export default class AddScoreCommand implements ICommand {
    name: string = "addscore";
    description: string = "Adds or removes experience from your account. Usage: /addscore <amount> (negative removes).";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.NONE;
    usage = "<amount>";
    example = "/addscore 100000";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        if (args.length < 1) {
            context.reply("Usage: /addscore <amount>");
            return;
        }

        const amount = parseInt(args[0], 10);

        if (isNaN(amount)) {
            context.reply("Error: Amount must be a number.");
            return;
        }

        const user = context.executor.user;
        if (!user) {
            context.reply("Error: User not found.");
            return;
        }

        const originalRank = user.rank;
        const currentScore = user.experience;
        let newScore = currentScore + amount;

        const MIN_SCORE = 0;
        newScore = Math.max(MIN_SCORE, Math.min(newScore, MAX_COMMAND_SCORE));

        try {
            const updatedUser = await context.server.userService.updateResources(user.id, {
                experience: newScore,
            });

            context.executor.user = updatedUser;

            context.executor.sendPacket(new UpdateScorePacket({ score: updatedUser.experience }));
            context.reply(`Score updated to: ${updatedUser.experience}.`);

            if (updatedUser.rank !== originalRank) {
                const newRankInfo = context.server.rankService.getRankById(updatedUser.rank);
                if (newRankInfo) {
                    const rankPacket = new UpdateRankPacket({
                        rank: updatedUser.rank,
                        score: updatedUser.experience,
                        currentRankScore: newRankInfo.minScore,
                        nextRankScore: updatedUser.nextRankScore,
                        reward: 0,
                    });
                    context.executor.sendPacket(rankPacket);
                    context.reply(`Congratulations! You reached rank: ${newRankInfo.name}.`);
                }
                // The garage item lists are rank-dependent: a rank change (up OR down) with the garage
                // open must fully reload it, or the client renders duplicated items.
                GarageWorkflow.reloadGarage(context.executor, context.server);
                // Atualiza o rank visual desse jogador para todos os demais online.
                broadcastPlayerRankToOthers(context.server, updatedUser);
            }
        } catch (error: any) {
            context.reply(`Error updating score: ${error.message}`);
        }
    }
}