import { MAX_COMMAND_SCORE } from "@/config/rank.data";
import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { GarageWorkflow } from "@/features/garage/garage.workflow";
import { UpdateRankPacket, UpdateScorePacket } from "@/features/profile/profile.packets";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";
import { broadcastPlayerRankToOthers } from "@/features/profile/rank.notify";

export default class AddScoreCommand implements ICommand {
    name: string = "addscore";
    description: string = "Adds or removes experience. Usage: /addscore <amount> [username] (negative removes).";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.ADMINISTRATOR;
    usage = "<amount> [username]";
    example = "/addscore 100000 Giann";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        if (args.length < 1) {
            context.reply("Usage: /addscore <amount> [username]");
            return;
        }

        const amount = parseInt(args[0], 10);
        if (isNaN(amount)) {
            context.reply("Error: Amount must be a number.");
            return;
        }

        // Default target is the administrator executing the command
        let targetClient = context.executor;
        const targetUsername = args[1];

        if (targetUsername) {
            // Find the online player by username using your server's exact method
            const foundClient = context.server.findClientByUsername(targetUsername);
            if (!foundClient) {
                context.reply(`Error: User "${targetUsername}" is not online.`);
                return;
            }
            targetClient = foundClient;
        }

        const user = targetClient.user;
        if (!user) {
            context.reply("Error: Target user data not found.");
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

            // Update user document on their live connection instance
            targetClient.user = updatedUser;

            // Send score packet directly to the targeted client
            targetClient.sendPacket(new UpdateScorePacket({ score: updatedUser.experience }));
            context.reply(`Score for ${updatedUser.username} updated to: ${updatedUser.experience}.`);

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
                    
                    targetClient.sendPacket(rankPacket);
                }
                
                GarageWorkflow.reloadGarage(targetClient, context.server);
                broadcastPlayerRankToOthers(context.server, updatedUser);
            }
        } catch (error: any) {
            context.reply(`Error updating score: ${error.message}`);
        }
    }
}