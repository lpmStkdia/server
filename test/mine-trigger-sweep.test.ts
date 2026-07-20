import assert from "node:assert/strict";
import test from "node:test";
import { MineService } from "@/features/battle/mine.service";
import { BattleMode } from "@/features/battle/battle.model";

test("checkTriggers detonates a mine when the tank path crosses it between previous and current positions", () => {
  const battle: any = {
    battleId: 1,
    mapResourceId: "test-map",
    settings: { battleMode: BattleMode.DM, withoutMines: false },
    activeMines: new Map(),
    teamOf: () => 0,
    timers: { clear: () => undefined },
    broadcast: () => undefined,
    mineCounter: 0,
  };

  battle.activeMines.set("mine-1", {
    id: "mine-1",
    owner: "enemy",
    ownerTeam: 1,
    position: { x: 0, y: 0, z: 0 },
    armed: true,
  });

  const client: any = {
    user: { username: "me", equippedHull: "unknown" },
    battleState: "active",
    battlePosition: { x: 1000, y: 0, z: 0 },
    battlePositionPrevious: { x: -1000, y: 0, z: 0 },
    battleOrientation: { x: 0, y: 0, z: 0 },
    currentBattle: battle,
  };

  const mineService = new MineService(
    { findClientByUsername: () => null } as any,
    { applyDamage: async () => undefined } as any,
    { isBlockedBetween: () => false } as any,
    { on: () => undefined } as any,
  );

  mineService.checkTriggers(client);

  assert.equal(battle.activeMines.size, 0, "expected the mine to be removed once the swept path hit it");
});
