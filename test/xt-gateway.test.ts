import assert from "node:assert/strict";
import test from "node:test";

import { GarageService } from "../src/features/garage/garage.service";
import { QuestService } from "../src/features/quests/quests.service";
import { ChatModeratorLevel } from "../src/shared/models/enums/chat-moderator-level.enum";
import User from "../src/shared/models/user.model";

test("garage hides XT items for new non-staff users but keeps them visible for staff and existing owners", () => {
    const service = new GarageService();

    const nonStaffInventory = {
        turrets: new Map<string, number>(),
        hulls: new Map<string, number>(),
        paints: [] as string[],
        supplies: new Map<string, number>(),
        premiumExpiresAt: null,
        rank: 1,
        chatModeratorLevel: ChatModeratorLevel.NONE,
    };

    const nonStaffData = service.buildGarageData(nonStaffInventory as any);
    const seenNonStaffXT = [...nonStaffData.garageItems, ...nonStaffData.shopItems].filter((item: any) => item.id.endsWith("_xt"));
    assert.equal(seenNonStaffXT.length, 0, "new regular users should not see XT items");

    const staffInventory = {
        ...nonStaffInventory,
        chatModeratorLevel: ChatModeratorLevel.MODERATOR,
    };

    const staffData = service.buildGarageData(staffInventory as any);
    const staffXT = [...staffData.garageItems, ...staffData.shopItems].filter((item: any) => item.id.endsWith("_xt"));
    assert.ok(staffXT.some((item: any) => item.id === "machinegun_xt"), "staff should still see XT items");

    const existingOwnerInventory = {
        ...nonStaffInventory,
        turrets: new Map<string, number>([["machinegun_xt", 0]]),
    };

    const existingOwnerData = service.buildGarageData(existingOwnerInventory as any);
    const existingOwnerXT = [...existingOwnerData.garageItems, ...existingOwnerData.shopItems].filter((item: any) => item.id.endsWith("_xt"));
    assert.ok(existingOwnerXT.some((item: any) => item.id === "machinegun_xt"), "existing owners should still see their XT items");

    assert.ok(![...nonStaffData.garageItems, ...nonStaffData.shopItems].some((item: any) => item.id === "isida_xt"), "Isida XT should never appear in the garage catalog");
});

test("collecting an XT quest reward grants the XT item at M0", async () => {
    const service = new QuestService();
    const user = {
        username: "tester",
        crystals: 0,
        rank: 1,
        dailyQuests: [{
            questId: 1,
            questType: "GOLDBOX",
            difficulty: "hard",
            progress: 1,
            finishCriteria: 1,
            prizes: [{ itemName: "Vulcan XT", itemCount: 1 }],
            isCompleted: false,
            canSkipForFree: false,
        }],
        supplies: new Map<string, number>(),
        turrets: new Map<string, number>(),
        questStreak: 0,
        questLevel: 1,
        lastQuestCompletedDate: null,
        questCompletionUnviewed: false,
        freeQuestSkipUsedDate: null,
        lastQuestGeneratedDate: null,
        save: async () => undefined,
    } as any;

    const originalUpdateOne = (User as any).updateOne;
    (User as any).updateOne = async () => ({ ok: 1 });

    try {
        const result = await service.collectReward(user, 1);
        assert.deepEqual(result, { crystalsGranted: 0 });
        assert.equal(user.turrets.get("machinegun_xt"), 0);
    } finally {
        (User as any).updateOne = originalUpdateOne;
    }
});
