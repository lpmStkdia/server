import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { GarageWorkflow } from "@/features/garage/garage.workflow";
import { UpdateRankPacket, UpdateScorePacket } from "@/features/profile/profile.packets";
import { ChatModeratorLevel, hasModeratorPower } from "@/shared/models/enums/chat-moderator-level.enum";
import { broadcastPlayerRankToOthers } from "@/features/profile/rank.notify";

/** Jumps straight to rank N by setting the experience to that rank's threshold. Self-use requires
 *  Moderator; targeting ANOTHER user requires Administrator (checked inside). */
export default class SetRankCommand implements ICommand {
    name = "setrank";
    description = "Jumps straight to rank N (targeting another player requires Administrator). Usage: /setrank [username] <rank>.";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.MODERATOR;
    usage = "[username] <rank>";
    example = "/setrank 15";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const { server } = context;
        let targetName: string | null = null;
        let rankArg: string;
        if (args.length >= 2) { targetName = args[0]; rankArg = args[1]; }
        else if (args.length === 1) { rankArg = args[0]; }
        else {
            context.reply("Usage: /setrank [username] <rank>.");
            return;
        }

        const rank = parseInt(rankArg, 10);
        const rankInfo = isNaN(rank) ? null : server.rankService.getRankById(rank);
        if (!rankInfo) {
            context.reply(`Invalid rank "${rankArg}".`);
            return;
        }

        // Targeting someone else needs a higher role than self-use (which the outer permission gate
        // already restricts to Moderator+).
        if (targetName && !hasModeratorPower(context.executor.user!.chatModeratorLevel, ChatModeratorLevel.ADMINISTRATOR)) {
            context.reply("Setting another player's rank requires Administrator role.");
            return;
        }

        const online = targetName ? server.findClientByUsername(targetName) : context.executor;
        const user = online?.user ?? (targetName ? await server.userService.findUserByUsername(targetName) : context.executor.user);
        if (!user) {
            context.reply(`User "${targetName}" not found.`);
            return;
        }

        try {
            // updateResources recomputes rank/nextRankScore from the experience.
            const updated = await server.userService.updateResources(user.id, { experience: rankInfo.minScore });
            if (online?.user) {
                online.user = updated;
                online.sendPacket(new UpdateScorePacket({ score: updated.experience }));
                online.sendPacket(new UpdateRankPacket({
                    rank: updated.rank,
                    score: updated.experience,
                    currentRankScore: rankInfo.minScore,
                    nextRankScore: updated.nextRankScore,
                    reward: 0,
                }));
                // Rank-dependent garage lists don't rebuild in place — reload if they have it open.
                GarageWorkflow.reloadGarage(online, server);
            }
            // Updates the target's visual rank for everyone else online.
            broadcastPlayerRankToOthers(server, updated);
            context.reply(`${updated.username} is now rank ${updated.rank} (${rankInfo.name ?? ""}).`);
        } catch (error: any) {
            context.reply(`Error: ${error.message}`);
        }
    }
}
