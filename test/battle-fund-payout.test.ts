import test from 'node:test';
import assert from 'node:assert/strict';
import { RoundService } from '../src/features/battle/round.service';
import { Battle, BattleMode, BattleRoundState } from '../src/features/battle/battle.model';
import { StatsService } from '../src/features/stats/stats.service';

function createClient(user: any, battleScore = 10) {
  return {
    user,
    currentBattle: null,
    isSpectator: false,
    isDestroyed: false,
    isJoiningBattle: false,
    battleScore,
    kills: 1,
    deaths: 0,
    roundStats: { crystalsEarned: 0 },
    statsSnapshot: {},
    statsFlushedForRound: false,
    activeEffects: [],
    sendRaw() {},
    sendPacket() {},
  } as any;
}

test('finishRound awards fund crystals to players based on battle score even when battle is forced to finish', async () => {
  const updates: Array<{ id: string; crystals: number }> = [];
  const server = {
    rankedService: null,
    userService: {
      updateResources: async (_id: string, payload: { crystals: number }) => {
        updates.push({ id: _id, crystals: payload.crystals });
        const user = _id === 'a' ? userA : userB;
        return { ...user, crystals: payload.crystals };
      },
    },
    questService: {
      applyQuestEvent: async () => false,
    },
    findClientByUsername: () => null,
    getClients: () => [],
    broadcastToBattleList: () => {},
    garageService: { clearEquipCooldowns: () => {} },
    clanService: { applyRoundContribution: async () => {} },
    isRestartPending: () => false,
  } as any;

  const battle = new Battle({
    name: 'test',
    privateBattle: false,
    proBattle: false,
    battleMode: BattleMode.TDM,
    mapId: 'map_sandbox',
    maxPeopleCount: 2,
    minRank: 1,
    maxRank: 30,
    timeLimitInSec: 60,
    scoreLimit: 20,
    autoBalance: false,
    friendlyFire: false,
    parkourMode: false,
    equipmentConstraintsMode: 0 as any,
    reArmorEnabled: true,
    mapTheme: 0 as any,
    withoutBonuses: false,
    withoutCrystals: false,
    withoutSupplies: false,
    withoutUpgrades: false,
    reducedResistances: false,
    esportDropTiming: false,
    withoutGoldBoxes: false,
    withoutGoldSiren: false,
    withoutGoldZone: false,
    withoutMedkit: false,
    withoutMines: false,
    randomGold: false,
    dependentCooldownEnabled: false,
  });
  battle.roundState = BattleRoundState.RUNNING;
  battle.fund = 100;
  battle.scoreRed = 10;
  battle.scoreBlue = 0;

  const userA = { id: 'a', username: 'Alice', crystals: 0, stats: {}, set() {}, _id: 'a' } as any;
  const userB = { id: 'b', username: 'Bob', crystals: 0, stats: {}, set() {}, _id: 'b' } as any;
  const clientA = createClient(userA);
  const clientB = createClient(userB);
  clientA.currentBattle = battle;
  clientB.currentBattle = battle;
  battle.clients.add(clientA);
  battle.clients.add(clientB);
  battle.users.push(userA);
  battle.usersBlue.push(userA);
  battle.users.push(userB);
  battle.usersRed.push(userB);

  const roundService = new RoundService(server, { on: () => {}, emit: () => {} } as any, {} as any, {} as any, { onFundAdded: () => {}, clearAll: () => {} } as any);
  const originalFlushRound = StatsService.flushRound;
  StatsService.flushRound = (() => {}) as any;
  roundService.finishRound(battle);
  battle.timers.clear('finish');
  await new Promise((resolve) => setTimeout(resolve, 0));
  StatsService.flushRound = originalFlushRound;

  assert.deepEqual(updates.map((u) => u.id).sort(), ['a', 'b']);
  assert.ok(updates.every((u) => u.crystals > 0));
});

test('finishRound pays the full fund to the only player even when they scored zero', async () => {
  const updates: Array<{ id: string; crystals: number }> = [];
  const server = {
    rankedService: null,
    userService: {
      updateResources: async (_id: string, payload: { crystals: number }) => {
        updates.push({ id: _id, crystals: payload.crystals });
        return { id: _id, crystals: payload.crystals };
      },
    },
    questService: { applyQuestEvent: async () => false },
    findClientByUsername: () => null,
    getClients: () => [],
    broadcastToBattleList: () => {},
    garageService: { clearEquipCooldowns: () => {} },
    clanService: { applyRoundContribution: async () => {} },
    isRestartPending: () => false,
  } as any;

  const battle = new Battle({
    name: 'solo',
    privateBattle: false,
    proBattle: false,
    battleMode: BattleMode.DM,
    mapId: 'map_sandbox',
    maxPeopleCount: 1,
    minRank: 1,
    maxRank: 30,
    timeLimitInSec: 60,
    scoreLimit: 20,
    autoBalance: false,
    friendlyFire: false,
    parkourMode: false,
    equipmentConstraintsMode: 0 as any,
    reArmorEnabled: true,
    mapTheme: 0 as any,
    withoutBonuses: false,
    withoutCrystals: false,
    withoutSupplies: false,
    withoutUpgrades: false,
    reducedResistances: false,
    esportDropTiming: false,
    withoutGoldBoxes: false,
    withoutGoldSiren: false,
    withoutGoldZone: false,
    withoutMedkit: false,
    withoutMines: false,
    randomGold: false,
    dependentCooldownEnabled: false,
  });
  battle.roundState = BattleRoundState.RUNNING;
  battle.fund = 1000;

  const user = { id: 'solo', username: 'Solo', crystals: 0, stats: {}, set() {}, _id: 'solo' } as any;
  const client = createClient(user, 0);
  client.currentBattle = battle;
  battle.clients.add(client);
  battle.users.push(user);

  const roundService = new RoundService(server, { on: () => {}, emit: () => {} } as any, {} as any, {} as any, { onFundAdded: () => {}, clearAll: () => {} } as any);
  const originalFlushRound = StatsService.flushRound;
  StatsService.flushRound = (() => {}) as any;
  roundService.finishRound(battle);
  battle.timers.clear('finish');
  await new Promise((resolve) => setTimeout(resolve, 0));
  StatsService.flushRound = originalFlushRound;

  assert.deepEqual(updates.map((u) => u.id), ['solo']);
  assert.equal(updates[0].crystals, 1000);
});

test('finishRound does not award fund crystals in parkour mode', async () => {
  const updates: Array<{ id: string; crystals: number }> = [];
  const server = {
    rankedService: null,
    userService: {
      updateResources: async (_id: string, payload: { crystals: number }) => {
        updates.push({ id: _id, crystals: payload.crystals });
        return { id: _id, crystals: payload.crystals };
      },
    },
    questService: { applyQuestEvent: async () => false },
    findClientByUsername: () => null,
    getClients: () => [],
    broadcastToBattleList: () => {},
    garageService: { clearEquipCooldowns: () => {} },
    clanService: { applyRoundContribution: async () => {} },
    isRestartPending: () => false,
  } as any;

  const battle = new Battle({
    name: 'parkour',
    privateBattle: false,
    proBattle: false,
    battleMode: BattleMode.DM,
    mapId: 'map_sandbox',
    maxPeopleCount: 1,
    minRank: 1,
    maxRank: 30,
    timeLimitInSec: 60,
    scoreLimit: 20,
    autoBalance: false,
    friendlyFire: false,
    parkourMode: true,
    equipmentConstraintsMode: 0 as any,
    reArmorEnabled: true,
    mapTheme: 0 as any,
    withoutBonuses: false,
    withoutCrystals: false,
    withoutSupplies: false,
    withoutUpgrades: false,
    reducedResistances: false,
    esportDropTiming: false,
    withoutGoldBoxes: false,
    withoutGoldSiren: false,
    withoutGoldZone: false,
    withoutMedkit: false,
    withoutMines: false,
    randomGold: false,
    dependentCooldownEnabled: false,
  });
  battle.roundState = BattleRoundState.RUNNING;
  battle.fund = 5000;

  const user = { id: 'parkour', username: 'Parkour', crystals: 0, stats: {}, set() {}, _id: 'parkour' } as any;
  const client = createClient(user, 0);
  client.currentBattle = battle;
  battle.clients.add(client);
  battle.users.push(user);

  const roundService = new RoundService(server, { on: () => {}, emit: () => {} } as any, {} as any, {} as any, { onFundAdded: () => {}, clearAll: () => {} } as any);
  const originalFlushRound = StatsService.flushRound;
  StatsService.flushRound = (() => {}) as any;
  roundService.finishRound(battle);
  battle.timers.clear('finish');
  await new Promise((resolve) => setTimeout(resolve, 0));
  StatsService.flushRound = originalFlushRound;

  assert.deepEqual(updates, []);
});
