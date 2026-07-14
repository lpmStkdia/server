import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { GarageWorkflow } from "@/features/garage/garage.workflow";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";
import { UserDocument } from "@/shared/models/user.model";

/** Resets a user's garage to the new-account loadout (wasp/smoky/holiday). Rank/crystals untouched. */
export function resetGarageInventory(user: UserDocument): void {
    user.hulls = new Map([["wasp", 0]]);
    user.turrets = new Map([["smoky", 0]]);
    user.paints = ["green", "holiday"];
    user.equippedHull = "wasp";
    user.equippedTurret = "smoky";
    user.equippedPaint = "holiday";
}

export default class ResetGarageCommand implements ICommand {
    name = "resetgarage";
    description = "Resets a user's garage to the default new-account loadout. Usage: /resetgarage <username>.";
    permissionLevel = ChatModeratorLevel.ADMINISTRATOR;
    usage = "<username>";
    example = "/resetgarage Joao";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        if (args.length < 1) {
            context.reply("Usage: /resetgarage <username>.");
            return;
        }
        const online = context.server.findClientByUsername(args[0]);
        const user = online?.user ?? (await context.server.userService.findUserByUsername(args[0]));
        if (!user) {
            context.reply(`User "${args[0]}" not found.`);
            return;
        }

        resetGarageInventory(user);
        await user.save();
        if (online) GarageWorkflow.reloadGarage(online, context.server);
        context.reply(`${user.username}'s garage was reset to default (wasp/smoky/holiday).`);
    }
}
