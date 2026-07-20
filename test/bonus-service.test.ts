import test from 'node:test';
import assert from 'node:assert/strict';
import { BonusService } from '../src/features/battle/bonus.service';
import { Battle, BattleMode } from '../src/features/battle/battle.model';
import * as BattlePackets from '../src/features/battle/battle.packets';

test('announceBonusDrops broadcasts a drop-zone marker for gold and pumpkin', () => {
  const service = new BonusService({} as any, {} as any);
  const sentPackets: any[] = [];

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
  battle.broadcast = ((packet: any) => sentPackets.push(packet)) as any;
  battle.timers.set = (() => {}) as any;

  for (const type of ['gold', 'pumpkin'] as const) {
    sentPackets.length = 0;
    service.announceBonusDrops(battle, type, 1);

    const markerPacket = sentPackets.find((packet) => packet instanceof BattlePackets.BonusRegionsPacket);
    assert.ok(markerPacket, `${type}: expected a bonus regions marker packet`);
    assert.equal(markerPacket.bonusRegionData.length, 1, `${type}: expected a single drop-zone marker`);
    assert.ok(markerPacket.bonusRegionData[0].position, `${type}: expected marker position data`);

    const sirenPacket = sentPackets.find((packet) => packet instanceof BattlePackets.GoldBoxComingNotificationPacket);
    assert.ok(sirenPacket, `${type}: expected siren notification packet`);
  }
});
