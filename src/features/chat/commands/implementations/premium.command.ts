import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { UpdatePremiumTimePacket } from "@/features/profile/profile.packets";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";
import { secondsLeft } from "@/shared/models/passes";
import { ItemUtils } from "@/utils/item.utils";

/**
 * Checks and SETS a player's premium in HOURS (absolute value, not incremental):
 *   /premium <username>        → shows how much premium the person has
 *   /premium <username> <hours> → sets the premium hours (0 = no premium)
 * The username is ALWAYS required — to give it to themselves, an admin provides their own nick. If the
 * target is ONLINE, sends `UpdatePremiumTime` live; setting 0 reconciles the equipped premium paint back
 * to green (see ItemUtils.reconcilePremiumEquipment). Also persists for offline targets.
 */
export default class PremiumCommand implements ICommand {
    name = "premium";
    description = "Checks/sets a player's premium in hours (0 = no premium). Usage: /premium <username> [hours].";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.ADMINISTRATOR;
    usage = "<username> [hours]";
    example = "/premium Danlino 24";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const { server } = context;
        if (args.length < 1) {
            context.reply("Usage: /premium <username> [hours] (no hours = check; 0 = no premium).");
            return;
        }

        const targetName = args[0];
        const online = server.findClientByUsername(targetName);
        const user = online?.user ?? await server.userService.findUserByUsername(targetName);
        if (!user) {
            context.reply(`User "${targetName}" not found.`);
            return;
        }

        // No hours → check.
        if (args[1] === undefined) {
            const secs = secondsLeft(user.premiumExpiresAt);
            if (secs <= 0) {
                context.reply(`${user.username} has no active premium.`);
            } else {
                const h = Math.floor(secs / 3600);
                const m = Math.floor((secs % 3600) / 60);
                context.reply(`${user.username} has ${h}h${m > 0 ? ` ${m}min` : ""} of premium.`);
            }
            return;
        }

        // With hours → set (absolute; minimum 0).
        const hours = parseInt(args[1], 10);
        if (isNaN(hours) || hours < 0) {
            context.reply("Error: hours must be a number >= 0 (0 = no premium).");
            return;
        }

        try {
            user.premiumExpiresAt = hours > 0 ? new Date(Date.now() + hours * 60 * 60 * 1000) : null;
            await user.save();

            // Set to 0 → reverts the equipped premium paint to green (persists if changed).
            await ItemUtils.reconcilePremiumEquipment(user);

            // Online target: updates the premium time live (no relog needed).
            if (online?.user) {
                online.user = user;
                online.sendPacket(new UpdatePremiumTimePacket({ timeLeft: secondsLeft(user.premiumExpiresAt) }));
            }

            context.reply(hours > 0
                ? `Premium of ${user.username} set to ${hours}h.`
                : `Premium of ${user.username} removed (0h).`);
        } catch (error: any) {
            context.reply(`Error: ${error.message}`);
        }
    }
}
