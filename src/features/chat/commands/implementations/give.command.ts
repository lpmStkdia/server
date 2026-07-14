import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { UpdateCrystals } from "@/features/profile/profile.packets";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

const MAX_CRYSTALS = 99_999_999;

/** Grants crystals to another player (works offline; live update when online). */
export default class GiveCommand implements ICommand {
    name = "give";
    description = "Grants crystals to another player. Usage: /give <username> <amount>.";
    permissionLevel = ChatModeratorLevel.MODERATOR;
    usage = "<username> <amount>";
    example = "/give Joao 50000";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const amount = parseInt(args[1], 10);
        if (args.length < 2 || isNaN(amount) || amount <= 0) {
            context.reply("Usage: /give <username> <amount> (positive number).");
            return;
        }

        const online = context.server.findClientByUsername(args[0]);
        const target = online?.user ?? (await context.server.userService.findUserByUsername(args[0]));
        if (!target) {
            context.reply(`User "${args[0]}" not found.`);
            return;
        }

        try {
            const crystals = Math.min(target.crystals + amount, MAX_CRYSTALS);
            const updated = await context.server.userService.updateResources(target.id, { crystals });
            if (online) {
                online.user = updated;
                online.sendPacket(new UpdateCrystals({ crystals: updated.crystals }));
            }
            context.reply(`+${amount} crystals to ${updated.username} (total: ${updated.crystals}).`);
        } catch (error: any) {
            context.reply(`Error: ${error.message}`);
        }
    }
}
