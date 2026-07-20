import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";
import { GameClient } from "@/server/game.client";
import { Battle } from "@/features/battle/battle.model";
import * as BattlePackets from "@/features/battle/battle.packets";
import { ActivateSupplyCommandHandler } from "@/features/battle/battle.handlers";

const AUTO_MODE_1 = 1;
const AUTO_MODE_2 = 2;
const SUPPLIES_MODE_2 = ["health", "armor", "double_damage", "n2o"] as const;

function isParkourBattle(battle: Battle | null): boolean {
    return !!battle?.settings.parkourMode;
}

function scheduleMineTick(client: GameClient): void {
    const delay = 75;
    client.autoClickerMineTimer = setTimeout(async () => await runMineClickerTick(client), delay);
}

function scheduleSupplyTick(client: GameClient): void {
    const delay = 1;
    client.autoClickerSupplyTimer = setTimeout(async () => await runSupplyClickerTick(client), delay);
}

async function runMineClickerTick(client: GameClient): Promise<void> {
    const battle = client.currentBattle;
    const server = client.getServer();
    if (!client.autoClickerMineEnabled || !battle || !isParkourBattle(battle) || !client.user) {
        client.stopAutoClickerMine();
        return;
    }

    if (battle.settings.withoutMines) {
        client.stopAutoClickerMine();
        return;
    }

    if (client.battleState === "active") {
        const packet = new BattlePackets.ActivateSupplyCommandPacket();
        packet.itemId = "mine";
        try {
            await new ActivateSupplyCommandHandler().execute(client, server, packet);
        } catch (error: any) {
            console.error(`Auto-clicker mine error for ${client.user.username}:`, error);
            client.stopAutoClickerMine();
            return;
        }
    }

    if (client.autoClickerMineEnabled) {
        scheduleMineTick(client);
    }
}

async function runSupplyClickerTick(client: GameClient): Promise<void> {
    const battle = client.currentBattle;
    const server = client.getServer();
    if (!client.autoClickerSupplyEnabled || !battle || !isParkourBattle(battle) || !client.user) {
        client.stopAutoClickerSupply();
        return;
    }

    if (battle.settings.withoutSupplies) {
        client.stopAutoClickerSupply();
        return;
    }

    const readySupplies = SUPPLIES_MODE_2.filter((supplyId) => {
        const count = client.user!.supplies.get(supplyId) ?? 0;
        if (count <= 0) return false;
        const now = Date.now();
        return now >= (client.supplyReadyAt.get(supplyId) ?? 0);
    });

    if (readySupplies.length > 0 && client.battleState === "active") {
        for (const supplyId of readySupplies) {
            const packet = new BattlePackets.ActivateSupplyCommandPacket();
            packet.itemId = supplyId;
            try {
                await new ActivateSupplyCommandHandler().execute(client, server, packet);
            } catch (error: any) {
                console.error(`Auto-clicker supply error for ${client.user.username}:`, error);
                client.stopAutoClickerSupply();
                return;
            }
        }
    }

    if (client.autoClickerSupplyEnabled) {
        scheduleSupplyTick(client);
    }
}

export default class AutoCommand implements ICommand {
    name = "auto";
    description = "Enables or disables parkour-only auto-clickers. Usage: /auto <1/2/off/0> or /auto off 1 /auto off 2.";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.NONE;
    usage = "<1/2/off>";
    example = "/auto 1";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const client = context.executor;
        const battle = client.currentBattle;
        if (!client.user || !battle) {
            context.reply("You must be in a battle to use /auto.");
            return;
        }

        if (!isParkourBattle(battle)) {
            context.reply("Auto-clicker is only available in parkour battles.");
            return;
        }

        const rawArg = (args[0] ?? "").toLowerCase();
        const targetArg = (args[1] ?? "").toLowerCase();

        const isOffCommand = rawArg === "off" || rawArg === "0";
        const requestedMode = parseInt(rawArg, 10);

        if (isOffCommand && (targetArg === "1" || targetArg === "2")) {
            if (targetArg === "1") {
                if (!client.autoClickerMineEnabled) {
                    context.reply("Mine auto-clicker is already disabled.");
                    return;
                }
                client.stopAutoClickerMine();
                context.reply("Mine auto-clicker disabled.");
                return;
            }
            if (targetArg === "2") {
                if (!client.autoClickerSupplyEnabled) {
                    context.reply("Supply auto-clicker is already disabled.");
                    return;
                }
                client.stopAutoClickerSupply();
                context.reply("Supply auto-clicker disabled.");
                return;
            }
        }

        if (isOffCommand) {
            if (!client.autoClickerMineEnabled && !client.autoClickerSupplyEnabled) {
                context.reply("Auto-clicker is already disabled.");
                return;
            }
            client.stopAutoClickerAll();
            context.reply("All auto-clickers disabled.");
            return;
        }

        if (requestedMode !== AUTO_MODE_1 && requestedMode !== AUTO_MODE_2) {
            context.reply("Usage: /auto 1 | /auto 2 | /auto off | /auto off 1 | /auto off 2.");
            return;
        }

        if (requestedMode === AUTO_MODE_1 && battle.settings.withoutMines) {
            context.reply("This battle has mines disabled.");
            return;
        }

        if (requestedMode === AUTO_MODE_1) {
            if (!client.autoClickerMineEnabled) {
                client.autoClickerMineEnabled = true;
                scheduleMineTick(client);
            }
            context.reply("Mine auto-clicker enabled (75ms). Use /auto off 1 to stop.");
            return;
        }

        if (requestedMode === AUTO_MODE_2) {
            if (!client.autoClickerSupplyEnabled) {
                client.autoClickerSupplyEnabled = true;
                scheduleSupplyTick(client);
            }
            context.reply("Supply auto-clicker enabled (1ms). Use /auto off 2 to stop.");
            return;
        }
    }
}
