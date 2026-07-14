import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { UpdateCrystals } from "@/features/profile/profile.packets";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

export default class AddCrystalsCommand implements ICommand {
    name: string = "addcrystals";
    description: string = "Adds or removes crystals. Usage: /addcrystals <amount> [username] (negative removes).";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.ADMINISTRATOR;
    usage = "<amount> [username]";
    example = "/addcrystals 50000 Giann";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        if (args.length < 1) {
            context.reply("Usage: /addcrystals <amount> [username]");
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

        const currentCrystals = user.crystals;
        let newCrystals = currentCrystals + amount;

        const MAX_CRYSTALS = 99_999_999;
        const MIN_CRYSTALS = 0;
        newCrystals = Math.max(MIN_CRYSTALS, Math.min(newCrystals, MAX_CRYSTALS));

        try {
            const updatedUser = await context.server.userService.updateResources(user.id, {
                crystals: newCrystals,
            });

            // Update user document on their live connection instance
            targetClient.user = updatedUser;

            // Send packet directly to the targeted user's client
            targetClient.sendPacket(new UpdateCrystals({ crystals: updatedUser.crystals }));
            
            context.reply(`Crystals for ${updatedUser.username} updated to: ${updatedUser.crystals}.`);
        } catch (error: any) {
            context.reply(`Error updating crystals: ${error.message}`);
        }
    }
}