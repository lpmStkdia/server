import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";
import { isCrystalAbonementActive } from "@/shared/models/passes";

/**
 * Activates (or deactivates) the Double Crystals abonement on YOUR OWN account — for testing the UI
 * (deposit card + double indicator in the shop). Sets `crystalAbonementExpiresAt`. The effect appears
 * when REOPENING the garage/shop (there is no incremental packet for it). Only doubles DONATION
 * crystals, not crystals earned in-game.
 */
export default class SetAbonementCommand implements ICommand {
    name = "setabonement";
    description = "Sets Double Crystals on your account for N hours (default 24; 0 disables). Usage: /setabonement [hours].";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.ADMINISTRATOR;
    usage = "[hours]";
    example = "/setabonement 24";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const user = context.executor.user;
        if (!user) return;

        const hours = args[0] !== undefined ? parseInt(args[0], 10) : 24;
        if (isNaN(hours)) {
            context.reply("Usage: /setabonement [hours] (default 24; 0 disables).");
            return;
        }

        try {
            if (hours <= 0) {
                user.crystalAbonementExpiresAt = null;
                await user.save();
                context.reply("Double Crystals disabled. Reopen garage/shop to refresh.");
                return;
            }
            user.crystalAbonementExpiresAt = new Date(Date.now() + hours * 60 * 60 * 1000);
            await user.save();
            context.reply(`Double Crystals enabled for ${hours}h (active=${isCrystalAbonementActive(user)}). Reopen garage/shop to refresh.`);
        } catch (error: any) {
            context.reply(`Error: ${error.message}`);
        }
    }
}
