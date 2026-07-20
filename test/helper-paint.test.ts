import test from 'node:test';
import assert from 'node:assert/strict';
import { GarageService } from '../src/features/garage/garage.service';
import { CombatService } from '../src/features/battle/combat.service';
import { EquipmentConstraintsMode, BattleRoundState } from '../src/features/battle/battle.model';
import { ChatModeratorLevel } from '../src/shared/models/enums/chat-moderator-level.enum';
import { itemBlueprints } from '../src/features/garage/garage.data';
import { ItemUtils } from '../src/utils/item.utils';

test('helper paint is hidden from non candidate-plus garages', () => {
  const garageService = new GarageService();
  const inventory = {
    paints: [],
    supplies: new Map(),
    chatModeratorLevel: ChatModeratorLevel.NONE,
  } as any;

  const { garageItems, shopItems } = garageService.buildGarageData(inventory);
  const helperVisible = [...garageItems, ...shopItems].some((item: any) => item.id === 'helper');

  assert.equal(helperVisible, false);
});

test('helper paint is visible to candidate-plus garages', () => {
  const garageService = new GarageService();
  const inventory = {
    paints: [],
    supplies: new Map(),
    chatModeratorLevel: ChatModeratorLevel.CANDIDATE,
  } as any;

  const { garageItems, shopItems } = garageService.buildGarageData(inventory);
  const helperVisible = [...garageItems, ...shopItems].some((item: any) => item.id === 'helper');

  assert.equal(helperVisible, true);
});

test('helper paint reduces damage even when the source does not resolve to a turret property', async () => {
  const combatService = new CombatService({} as any, {} as any);
  const battle = {
    roundState: BattleRoundState.RUNNING,
    paused: false,
    settings: { equipmentConstraintsMode: EquipmentConstraintsMode.NONE },
    isFriendlyBlocked: () => false,
    broadcastToTeamOf: () => {},
    broadcastToSpectators: () => {},
  } as any;

  const targetUser = {
    id: 'target',
    username: 'Target',
    equippedPaint: 'helper',
    equippedHull: itemBlueprints.hulls[0].id,
    hulls: new Map([[itemBlueprints.hulls[0].id, 0]]),
    turrets: new Map(),
    paints: [],
  } as any;
  const targetClient = {
    user: targetUser,
    battleState: 'active',
    godMode: false,
    currentHealth: 10000,
    roundStats: { damageTaken: 0, damageDealt: 0 },
    damageFromAttackers: new Map(),
    activeEffects: [],
    showDamage: false,
    sendPacket: () => {},
  } as any;

  const shooterUser = {
    id: 'shooter',
    username: 'Shooter',
    equippedTurret: 'railgun',
    equippedHull: itemBlueprints.hulls[0].id,
    hulls: new Map([[itemBlueprints.hulls[0].id, 0]]),
    turrets: new Map(),
  } as any;
  const shooterClient = {
    user: shooterUser,
    battleState: 'active',
    godMode: false,
    currentHealth: 10000,
    roundStats: { damageTaken: 0, damageDealt: 0 },
    damageFromAttackers: new Map(),
    activeEffects: [],
    showDamage: false,
    sendPacket: () => {},
  } as any;

  await combatService.applyDamage(battle, shooterClient, targetClient, 1, 0, null, true);

  const expectedHealth = 10000 - (1 * 10000) / ItemUtils.getHullArmor(targetUser) * 0.7;
  assert.ok(Math.abs(targetClient.currentHealth - expectedHealth) < 1e-9);
});
