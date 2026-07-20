import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { UpdateCrystals } from "@/features/profile/profile.packets";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

const MAX_CRYSTALS = 99_999_999;

/** Sets (not adds) the caller's crystal count — sandbox sibling of /addcrystals. */
export default class SetCrystalsCommand implements ICommand {
    name = "setcrystals";
    description = "Sets (does not add) the amount of crystals in your account. Usage: /setcrystals <amount>";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.MODERATOR;
    usage = "<amount>";
    example = "/setcrystals 1000000";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const amount = parseInt(args[0], 10);
        if (isNaN(amount)) {
            context.reply("Usage: /setcrystals <amount>.");
            return;
        }
        const user = context.executor.user;
        if (!user) return;

        const crystals = Math.max(0, Math.min(amount, MAX_CRYSTALS));
        try {
            const updated = await context.server.userService.updateResources(user.id, { crystals });
            context.executor.user = updated;
            context.executor.sendPacket(new UpdateCrystals({ crystals: updated.crystals }));
            context.reply(`Crystals set to ${updated.crystals}.`);
        } catch (error: any) {
            context.reply(`Error: ${error.message}`);
        }
    }
}
