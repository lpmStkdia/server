import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { UpdateCrystals } from "@/features/profile/profile.packets";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

export default class AddCrystalsCommand implements ICommand {
    name: string = "addcrystals";
    description: string = "Adds or removes crystals from your account. Usage: /addcrystals <amount> (negative removes).";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.MODERATOR;
    usage = "<amount>";
    example = "/addcrystals 50000";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        if (args.length < 1) {
            context.reply("Usage: /addcrystals <amount>");
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

        const currentCrystals = user.crystals;
        let newCrystals = currentCrystals + amount;

        const MAX_CRYSTALS = 99_999_999;
        const MIN_CRYSTALS = 0;
        newCrystals = Math.max(MIN_CRYSTALS, Math.min(newCrystals, MAX_CRYSTALS));

        try {
            const updatedUser = await context.server.userService.updateResources(user.id, {
                crystals: newCrystals,
            });

            context.executor.user = updatedUser;

            context.executor.sendPacket(new UpdateCrystals({ crystals: updatedUser.crystals }));
            context.reply(`Crystals updated to: ${updatedUser.crystals}.`);
        } catch (error: any) {
            context.reply(`Error updating crystals: ${error.message}`);
        }
    }
}