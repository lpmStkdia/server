import assert from "node:assert/strict";
import test from "node:test";
import { buildProfileViewModel } from "@/features/profile/profile.web.server";

test("buildProfileViewModel exposes the core account metrics and inventory", () => {
  const user = {
    username: "EpicRelax",
    crystals: 1234,
    experience: 56789,
    rank: 4,
    nextRankScore: 1000,
    equippedHull: "hunter",
    equippedTurret: "smoky",
    equippedPaint: "spectrum",
    hulls: new Map([[
      "hunter",
      0,
    ], ["mammoth", 2]]),
    turrets: new Map([["smoky", 0], ["railgun", 2]]),
    paints: ["green", "spectrum"],
    supplies: new Map([["health", 5], ["mine", 2]]),
    kits: ["mosquito"],
    stats: {
      counters: new Map([
        ["kills", 42],
        ["deaths", 8],
        ["supplies_used", 12],
        ["bonus_taken:gold", 3],
      ]),
    },
  } as any;

  const rankService = {
    getRankById: (id: number) => ({ id, name: "Corporal", minScore: 1500, experienceToNextRank: 2200 }),
    getRankForExperience: () => ({ id: 4, name: "Corporal", minScore: 1500, experienceToNextRank: 2200 }),
  } as any;

  const view = buildProfileViewModel(user, rankService);

  assert.equal(view.username, "EpicRelax");
  assert.equal(view.rank.name, "Corporal");
  assert.equal(view.kills, 42);
  assert.equal(view.deaths, 8);
  assert.equal(view.kdRatio, "5.25");
  assert.equal(view.crystals, 1234);
  assert.equal(view.ownedHulls.length, 2);
  assert.equal(view.ownedTurrets.length, 2);
  assert.equal(view.ownedPaints.length, 2);
  assert.equal(view.ownedSupplies.length, 2);
  assert.equal(view.ownedKits.length, 1);
  assert.equal(view.equippedHull.id, "hunter");
  assert.equal(view.equippedTurret.id, "smoky");
  assert.equal(view.equippedPaint.id, "spectrum");
});
