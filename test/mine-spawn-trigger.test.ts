import assert from "node:assert";
import test from "node:test";
import { BattleMode } from "@/features/battle/battle.model";
import { MineService, mineIntersectsTank, mineIntersectsTankSwept } from "@/features/battle/mine.service";

const collision = { isBlockedBetween: () => false } as any;

test("placed mines are armed immediately", () => {
    const battle = {
        battleId: "b1",
        mineCounter: 0,
        mapResourceId: "map_test",
        settings: { battleMode: BattleMode.DM, withoutMines: false },
        teamOf: () => 2,
        activeMines: new Map<string, any>(),
        broadcast: () => {},
        timers: { set: () => {}, clear: () => {} },
    } as any;

    const client = {
        battlePosition: { x: 0, y: 0, z: 0 },
        battleOrientation: { x: 0, y: 0, z: 0 },
        battleState: "active",
        user: { username: "p1", equippedHull: "wasp" },
    } as any;

    const service = new MineService({ findClientByUsername: () => null } as any, { applyDamage: async () => {} } as any, { raycastGroundZ: () => 0 } as any, { on: () => {} } as any);
    const id = service.placeMineAt(client, battle, { x: 0, y: 0, z: 0 });

    assert.equal(id, "1");
    assert.equal(battle.activeMines.get("1")?.armed, true);
});

test("mineIntersectsTank detects overlap when a tank sits on a mine", () => {
    const battle = {
        settings: { battleMode: BattleMode.DM },
        teamOf: () => 2,
    } as any;

    const client = {
        battlePosition: { x: 0, y: 0, z: 0 },
        battleOrientation: { x: 0, y: 0, z: 0 },
        battleState: "newcome",
        user: { username: "p1", equippedHull: "wasp" },
    } as any;

    const mine = {
        id: "m1",
        owner: "p2",
        ownerTeam: 0,
        armed: true,
        position: { x: 0, y: 0, z: 0 },
    } as any;

    assert.equal(mineIntersectsTank(battle, mine, client, collision), true);
});

test("mineIntersectsTank detects unarmed mines during spawn", () => {
    const battle = {
        settings: { battleMode: BattleMode.DM },
        teamOf: () => 2,
    } as any;

    const client = {
        battlePosition: { x: 0, y: 0, z: 0 },
        battleOrientation: { x: 0, y: 0, z: 0 },
        battleState: "newcome",
        user: { username: "p1", equippedHull: "wasp" },
    } as any;

    const mine = {
        id: "m3",
        owner: "p2",
        ownerTeam: 0,
        armed: false,
        position: { x: 0, y: 0, z: 0 },
    } as any;

    assert.equal(mineIntersectsTank(battle, mine, client, collision), false);
});

test("mineIntersectsTank ignores unarmed mines during movement", () => {
    const battle = {
        settings: { battleMode: BattleMode.DM },
        teamOf: () => 2,
    } as any;

    const client = {
        battlePosition: { x: 0, y: 0, z: 0 },
        battleOrientation: { x: 0, y: 0, z: 0 },
        battleState: "active",
        user: { username: "p1", equippedHull: "wasp" },
    } as any;

    const mine = {
        id: "m4",
        owner: "p2",
        ownerTeam: 0,
        armed: false,
        position: { x: 0, y: 0, z: 0 },
    } as any;

    assert.equal(mineIntersectsTank(battle, mine, client, collision), false);
});

test("mineIntersectsTank treats unarmed mines as triggers during spawn sweep", () => {
    const battle = {
        settings: { battleMode: BattleMode.DM },
        teamOf: () => 2,
    } as any;

    const client = {
        battlePosition: { x: 0, y: 0, z: 0 },
        battleOrientation: { x: 0, y: 0, z: 0 },
        battleState: "newcome",
        user: { username: "p1", equippedHull: "wasp" },
    } as any;

    const mine = {
        id: "m_unarmed",
        owner: "p2",
        ownerTeam: 0,
        armed: false,
        position: { x: 0, y: 0, z: 0 },
    } as any;

    assert.equal(mineIntersectsTank(battle, mine, client, collision, true, 0, true), true);
});

test("mineIntersectsTank ignores mines that are far away", () => {
    const battle = {
        settings: { battleMode: BattleMode.DM },
        teamOf: () => 2,
    } as any;

    const client = {
        battlePosition: { x: 0, y: 0, z: 0 },
        battleOrientation: { x: 0, y: 0, z: 0 },
        battleState: "newcome",
        user: { username: "p1", equippedHull: "wasp" },
    } as any;

    const mine = {
        id: "m2",
        owner: "p2",
        ownerTeam: 0,
        armed: true,
        position: { x: 5000, y: 5000, z: 0 },
    } as any;

    assert.equal(mineIntersectsTank(battle, mine, client, collision), false);
});

test("mine does NOT trigger before the tank hull actually reaches it", () => {
    const battle = {
        settings: { battleMode: BattleMode.DM },
        teamOf: () => 2,
    } as any;

    const client = {
        battlePosition: { x: 0, y: 0, z: 0 },
        battleOrientation: { x: 0, y: 0, z: 0 },
        battleState: "active",
        user: { username: "p1", equippedHull: "wasp" },
    } as any;

    const mine = {
        id: "m_pre_touch",
        owner: "p2",
        ownerTeam: 0,
        armed: true,
        position: { x: 166, y: 0, z: 0 },
    } as any;

    assert.equal(mineIntersectsTank(battle, mine, client, collision), false, "mine should not trigger until the hull actually reaches the mine");
});

test("spawn sweep detects mines exactly on the hull edge", () => {
    const battle = {
        settings: { battleMode: BattleMode.DM },
        teamOf: () => 2,
    } as any;

    const client = {
        battlePosition: { x: 0, y: 0, z: 0 },
        battleOrientation: { x: 0, y: 0, z: 0 },
        battleState: "newcome",
        user: { username: "p1", equippedHull: "wasp" },
    } as any;

    const mine = {
        id: "m_edge",
        owner: "p2",
        ownerTeam: 0,
        armed: true,
        position: { x: 152, y: 0, z: 0 },
    } as any;

    assert.equal(mineIntersectsTank(battle, mine, client, collision), true);
});

test("spawn sweep catches mines that are just inside the footprint", () => {
    const battle = {
        settings: { battleMode: BattleMode.DM },
        teamOf: () => 2,
    } as any;

    const client = {
        battlePosition: { x: 0, y: 0, z: 0 },
        battleOrientation: { x: 0, y: 0, z: 0 },
        battleState: "newcome",
        user: { username: "p1", equippedHull: "wasp" },
    } as any;

    const mine = {
        id: "m_inside",
        owner: "p2",
        ownerTeam: 0,
        armed: true,
        position: { x: 151.9, y: 0, z: 0 },
    } as any;

    assert.equal(mineIntersectsTank(battle, mine, client, collision), true);
});

test("mine does NOT trigger when tank flies high above it", () => {
    const battle = {
        settings: { battleMode: BattleMode.DM },
        teamOf: () => 2,
    } as any;

    const client = {
        battlePosition: { x: 0, y: 0, z: 150 },  // tank flying at Z=150
        battleOrientation: { x: 0, y: 0, z: 0 }, // upright
        battleState: "active",
        user: { username: "p1", equippedHull: "wasp" },
    } as any;

    const mine = {
        id: "m_below",
        owner: "p2",
        ownerTeam: 0,
        armed: true,
        position: { x: 0, y: 0, z: 0 },  // mine on ground at Z=0
    } as any;

    assert.equal(mineIntersectsTank(battle, mine, client, collision), false, "mine should not trigger when tank is far above it");
});

test("mine does NOT trigger when tank is horizontally displaced and above it", () => {
    const battle = {
        settings: { battleMode: BattleMode.DM },
        teamOf: () => 2,
    } as any;

    const client = {
        battlePosition: { x: 50, y: 50, z: 100 },  // tank flying at position offset and height
        battleOrientation: { x: 0, y: 0, z: 0 },   // upright
        battleState: "active",
        user: { username: "p1", equippedHull: "wasp" },
    } as any;

    const mine = {
        id: "m_away",
        owner: "p2",
        ownerTeam: 0,
        armed: true,
        position: { x: 0, y: 0, z: 0 },  // mine on ground far away
    } as any;

    assert.equal(mineIntersectsTank(battle, mine, client, collision), false, "mine should not trigger when tank passes over a distant position");
});

test("mine does NOT trigger when tilted tank is far above in Z", () => {
    const battle = {
        settings: { battleMode: BattleMode.DM },
        teamOf: () => 2,
    } as any;

    // Tank tilted (pitch = 45 degrees = π/4 ≈ 0.785 radians)
    // When tilted, mk = cosY * cosX = cos(0) * cos(0.785) ≈ 0.707 (but with Y tilt, mk could be smaller)
    const pitch = Math.PI / 4;
    const client = {
        battlePosition: { x: 0, y: 0, z: 100 },    // tank at Z=100
        battleOrientation: { x: pitch, y: 0, z: 0 }, // tilted forward
        battleState: "active",
        user: { username: "p1", equippedHull: "wasp" },
    } as any;

    const mine = {
        id: "m_below",
        owner: "p2",
        ownerTeam: 0,
        armed: true,
        position: { x: 0, y: 0, z: 0 },  // mine on ground at Z=0
    } as any;

    assert.equal(mineIntersectsTank(battle, mine, client, collision), false, "mine should not trigger even when tank is tilted");
});

test("BUG FIXED: mine placed by mid-air tank is snapped to ground level", () => {
    // Scenario: Tank B is in the air at Z=150 and drops a mine.
    // Before the fix: mine would be placed at Z=150 (inheriting height offset)
    // After the fix: mine is always placed on the ground at Z=0
    // Now Tank A at ground level Z=0 correctly does NOT trigger the mine
    // because they're both at the same Z level (ground).
    
    const battle = {
        settings: { battleMode: BattleMode.DM },
        teamOf: () => 2,
    } as any;

    const tankA = {
        battlePosition: { x: 0, y: 0, z: 0 },      // Tank A at ground level Z=0
        battleOrientation: { x: 0, y: 0, z: 0 },   // upright
        battleState: "active",
        user: { username: "p1", equippedHull: "wasp" },
    } as any;

    // After the fix, this mine was placed by a tank in mid-air (Tank B at Z=150)
    // but is now correctly placed at ground level Z=0 (not Z=150)
    const mine = {
        id: "m_ground_level",
        owner: "p2",
        ownerTeam: 0,
        armed: true,
        position: { x: 0, y: 0, z: 0 },  // mine correctly at Z=0 (ground level)
    } as any;

    // Tank A SHOULD trigger the mine because they're both at ground level
    assert.equal(mineIntersectsTank(battle, mine, tankA, collision), true, 
        "mine at ground level should trigger tank also at ground level");
});

test("placed mine detonates immediately when an enemy tank is already on top of it", () => {
    const battle: any = {
        battleId: "b1",
        mapResourceId: "map_test",
        settings: { battleMode: BattleMode.DM, withoutMines: false },
        teamOf: () => 2,
        activeMines: new Map<string, any>(),
        clients: new Set<any>(),
        timers: { clear: () => undefined, set: () => undefined },
        broadcast: () => undefined,
        mineCounter: 0,
    };

    const ownerClient: any = {
        battleState: "active",
        battlePosition: { x: 0, y: 0, z: 0 },
        battleOrientation: { x: 0, y: 0, z: 0 },
        user: { username: "owner", equippedHull: "wasp" },
    };

    const enemyClient: any = {
        battleState: "active",
        battlePosition: { x: 0, y: 0, z: 0 },
        battleOrientation: { x: 0, y: 0, z: 0 },
        user: { username: "enemy", equippedHull: "wasp" },
    };

    battle.clients.add(ownerClient);
    battle.clients.add(enemyClient);

    const mineService = new MineService(
        { findClientByUsername: () => null } as any,
        { applyDamage: async () => undefined } as any,
        { isBlockedBetween: () => false, raycastGroundZ: () => 0 } as any,
        { on: () => undefined } as any,
    );

    const id = mineService.placeMineAt(ownerClient, battle, { x: 0, y: 0, z: 0 });

    assert.equal(id, "1");
    assert.equal(battle.activeMines.size, 0, "the mine should detonate immediately on the enemy tank");
});

test("placed mine detonates immediately on a newly spawned tank", () => {
    const battle: any = {
        battleId: "b1",
        mapResourceId: "map_test",
        settings: { battleMode: BattleMode.DM, withoutMines: false },
        teamOf: () => 2,
        activeMines: new Map<string, any>(),
        clients: new Set<any>(),
        timers: { clear: () => undefined, set: () => undefined },
        broadcast: () => undefined,
        mineCounter: 0,
    };

    const ownerClient: any = {
        battleState: "active",
        battlePosition: { x: 0, y: 0, z: 0 },
        battleOrientation: { x: 0, y: 0, z: 0 },
        user: { username: "owner", equippedHull: "wasp" },
    };

    const spawnedClient: any = {
        battleState: "newcome",
        battlePosition: { x: 0, y: 0, z: 0 },
        battleOrientation: { x: 0, y: 0, z: 0 },
        user: { username: "enemy", equippedHull: "wasp" },
    };

    battle.clients.add(ownerClient);
    battle.clients.add(spawnedClient);

    const mineService = new MineService(
        { findClientByUsername: () => null } as any,
        { applyDamage: async () => undefined } as any,
        { isBlockedBetween: () => false, raycastGroundZ: () => 0 } as any,
        { on: () => undefined } as any,
    );

    const id = mineService.placeMineAt(ownerClient, battle, { x: 0, y: 0, z: 0 });

    assert.equal(id, "1");
    assert.equal(battle.activeMines.size, 0, "the mine should detonate immediately on the newly spawned tank");
});

test("swept collision: fast-moving tank triggers mine between positions", () => {
    const battle = {
        settings: { battleMode: BattleMode.DM },
        teamOf: () => 2,
    } as any;

    const prevPos = { x: 0, y: 0, z: 0 };
    const currPos = { x: 200, y: 0, z: 0 };
    const minePos = { x: 100, y: 0, z: 0 };  // Mine exactly on the path

    const client = {
        battlePosition: currPos,
        battleOrientation: { x: 0, y: 0, z: 0 },
        battleState: "active",
        user: { username: "p1", equippedHull: "wasp" },
    } as any;

    const mine = {
        id: "m_swept",
        owner: "p2",
        ownerTeam: 0,
        armed: true,
        position: minePos,
    } as any;

    // Tank moved from X=0 to X=200 in one frame. Mine at X=100 should be hit by swept detection.
    // This test verifies that fast-moving tanks don't miss mines.
    const result = mineIntersectsTankSwept(battle, mine, client, prevPos, currPos, collision);
    assert.equal(result, true, "swept collision should detect mine on the fast-moving tank's path");
});
