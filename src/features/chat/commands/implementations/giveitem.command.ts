import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { itemBlueprints } from "@/features/garage/garage.data";
import { GarageWorkflow } from "@/features/garage/garage.workflow";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Grants a specific garage item to a user — hulls/turrets always at their FIRST modification (m0);
 *  use /setmod afterwards to change it. */
export default class GiveItemCommand implements ICommand {
    name = "giveitem";
    description = "Grants an item to a user (hull/turret at m0 — adjust with /setmod — or a paint). Usage: /giveitem <username> <itemId>.";
    permissionLevel = ChatModeratorLevel.ADMINISTRATOR;
    usage = "<username> <itemId>";
    example = "/giveitem Joao railgun";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        if (args.length < 2) {
            context.reply("Usage: /giveitem <username> <itemId>.");
            return;
        }
        const online = context.server.findClientByUsername(args[0]);
        const user = online?.user ?? (await context.server.userService.findUserByUsername(args[0]));
        if (!user) {
            context.reply(`User "${args[0]}" not found.`);
            return;
        }
        const itemId = args[1].toLowerCase();

        const hull = itemBlueprints.hulls.find((h) => h.id === itemId);
        const turret = itemBlueprints.turrets.find((t) => t.id === itemId);
        const paint = itemBlueprints.paints.find((p) => p.id === itemId);

        if (hull) {
            user.hulls.set(itemId, 0);
            await user.save();
            context.reply(`${user.username} received the hull "${itemId}" m0 (use /setmod to change it).`);
        } else if (turret) {
            user.turrets.set(itemId, 0);
            await user.save();
            context.reply(`${user.username} received the turret "${itemId}" m0 (use /setmod to change it).`);
        } else if (paint) {
            if (!user.paints.includes(itemId)) user.paints.push(itemId);
            await user.save();
            context.reply(`${user.username} received the paint "${itemId}".`);
        } else {
            context.reply(`Item "${itemId}" does not exist (garage hulls/turrets/paints).`);
            return;
        }

        if (online) GarageWorkflow.reloadGarage(online, context.server);
    }
}
