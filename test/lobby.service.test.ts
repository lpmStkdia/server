import assert from "node:assert/strict";
import test from "node:test";
import { battleDataObject } from "../src/config/battle.data";
import { LobbyService } from "../src/features/lobby/lobby.service";
import { BattleMode, MapTheme } from "../src/features/battle/battle.model";
import { ResourceManager } from "../src/utils/resource.manager";

test("LobbyService creates a persistent default startup battle with the requested settings", () => {
  const lobby = new LobbyService();
  const battles = lobby.getBattles();
  assert.equal(battles.length, 1);
  const battle = battles[0];
  assert.equal(battle.settings.name, "Moon Silence");
  assert.equal(battle.settings.battleMode, BattleMode.TDM);
  assert.equal(battle.settings.mapId, "map_silence_moon");
  assert.equal(battle.settings.autoBalance, false);
  assert.equal(battle.settings.friendlyFire, false);
  assert.equal(battle.settings.parkourMode, true);
  assert.equal(battle.settings.minRank, 1);
  assert.equal(battle.settings.maxRank, 30);
  assert.equal(battle.settings.mapTheme, MapTheme.SPACE);
  assert.equal(battle.settings.timeLimitInSec, 59940);
  assert.equal(battle.isSystem, true);
});

test("battle map catalog includes silence_mm with summer and space support", () => {
  const entries = battleDataObject.maps.filter((map) => map.mapId === "map_silence_mm");
  assert.equal(entries.length, 2);

  const summerEntry = entries.find((map) => map.theme === "SUMMER");
  const spaceEntry = entries.find((map) => map.theme === "SPACE");

  assert.ok(summerEntry);
  assert.ok(spaceEntry);
  assert.equal(summerEntry?.previewResource, "map/silence_mm/summer/preview");
  assert.equal(spaceEntry?.previewResource, "map/silence_mm/space/preview");
});

test("resource manager resolves silence_mm space xml resource", () => {
  const resourceId = ResourceManager.getMapResourceIdWithFallback("silence_mm", MapTheme.SPACE);

  assert.equal(resourceId, "map/silence_mm/space/xml");
  assert.equal(ResourceManager.getIdlowById(resourceId), ResourceManager.getIdlowById("map/silence_mm/space/xml"));
});
