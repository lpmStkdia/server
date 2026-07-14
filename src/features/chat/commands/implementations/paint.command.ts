import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { GarageWorkflow } from "@/features/garage/garage.workflow";
import { LoadDependencies } from "@/features/loader/loader.packets";
import { ResourceId } from "@/generated/resourceTypes";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";
import { ResourceManager } from "@/utils/resource.manager";

/**
 * Test command: grants + equips a paint (default "holiday") and, when the caller is in a battle, applies
 * it live. Unlike the garage equip flow, a chat command bypasses the garage bulk-load, so the caller's own
 * client may not have the new paint's texture yet — building the InitTank against an undecoded resource
 * throws #1009 (own tank never appears). So we first send the texture to the CALLER's client and wait for
 * its ack, THEN run the normal equipment-change flow (which loads it on the other clients and respawns).
 * Usage: /paint [paintId]
 */
export default class PaintCommand implements ICommand {
    name = "paint";
    description = "Equips a test paint (default 'holiday') and applies it in the current match. Usage: /paint [paintId].";
    permissionLevel = ChatModeratorLevel.MODERATOR;
    usage = "[paintId]";
    example = "/paint spectrum";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const client = context.executor;
        const server = context.server;
        const user = client.user;
        if (!user) {
            context.reply("Error: user not found.");
            return;
        }

        const paintId = (args[0] ?? "holiday").toLowerCase();

        // Ensure ownership so equipItem's ownership check passes (this is a test grant).
        if (!user.paints.includes(paintId)) {
            user.paints.push(paintId);
        }

        try {
            await server.garageService.equipItem(user, `${paintId}_m0`);
        } catch (error: any) {
            context.reply(`Error equipping paint "${paintId}": ${error.message}`);
            return;
        }

        if (!client.currentBattle) {
            context.reply(`Paint "${paintId}" equipped. Enter a match to see it.`);
            return;
        }

        // Preload the new paint texture on the CALLER's client before respawning, then apply via the
        // shared equipment-change flow (which handles the other clients + respawn).
        const textureId = `paint/${paintId}/texture` as ResourceId;
        const callbackId = server.registerDynamicCallback((acking) => {
            if (acking !== client) return;
            server.removeDynamicCallback(callbackId);
            client.equipmentChangedInGarage = true;
            GarageWorkflow.applyEquipmentChange(client, server);
        });
        client.sendPacket(new LoadDependencies({ resources: ResourceManager.getBulkResources([textureId]) }, callbackId));

        context.reply(`Paint "${paintId}" equipped — loading texture and respawning to apply.`);
    }
}
