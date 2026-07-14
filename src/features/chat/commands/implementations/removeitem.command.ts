import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { GarageWorkflow } from "@/features/garage/garage.workflow";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Removes a specific item (hull/turret/paint/supply) from a user. If it was equipped, falls back to
 *  another owned item (re-adding the account default if nothing else is left). */
export default class RemoveItemCommand implements ICommand {
    name = "removeitem";
    description = "Removes a specific item (hull/turret/paint/supply) from a user. Usage: /removeitem <username> <itemId>.";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.ADMINISTRATOR;
    usage = "<username> <itemId>";
    example = "/removeitem Joao railgun";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        if (args.length < 2) {
            context.reply("Usage: /removeitem <username> <itemId>.");
            return;
        }
        const online = context.server.findClientByUsername(args[0]);
        const user = online?.user ?? (await context.server.userService.findUserByUsername(args[0]));
        if (!user) {
            context.reply(`User "${args[0]}" not found.`);
            return;
        }
        const itemId = args[1].toLowerCase();

        let removed: string | null = null;
        if (user.hulls.has(itemId)) {
            user.hulls.delete(itemId);
            if (user.equippedHull === itemId) {
                const fallback = [...user.hulls.keys()][0];
                if (!fallback) user.hulls.set("wasp", 0);
                user.equippedHull = fallback ?? "wasp";
            }
            removed = "hull";
        } else if (user.turrets.has(itemId)) {
            user.turrets.delete(itemId);
            if (user.equippedTurret === itemId) {
                const fallback = [...user.turrets.keys()][0];
                if (!fallback) user.turrets.set("smoky", 0);
                user.equippedTurret = fallback ?? "smoky";
            }
            removed = "turret";
        } else if (user.paints.includes(itemId)) {
            user.paints = user.paints.filter((p) => p !== itemId);
            if (user.equippedPaint === itemId) {
                const fallback = user.paints[0];
                if (!fallback) user.paints.push("holiday");
                user.equippedPaint = fallback ?? "holiday";
            }
            removed = "paint";
        } else if ((user.supplies.get(itemId) ?? 0) > 0) {
            user.supplies.set(itemId, 0);
            removed = "supply (cleared)";
        }

        if (!removed) {
            context.reply(`${user.username} does not own item "${itemId}".`);
            return;
        }
        await user.save();
        if (online) GarageWorkflow.reloadGarage(online, context.server);
        context.reply(`Item "${itemId}" (${removed}) removed from ${user.username}.`);
    }
}
