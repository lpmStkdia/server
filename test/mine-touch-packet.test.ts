import assert from "node:assert/strict";
import { test } from "node:test";

import { ActivateMinePacket, MineTouchCommandPacket } from "@/features/battle/battle-mine.packets";

test("MineTouchCommandPacket round-trips the mine id", () => {
    const original = new MineTouchCommandPacket({ mineId: "42" });
    const decoded = new MineTouchCommandPacket();
    decoded.read(original.write());

    assert.equal(decoded.mineId, "42");
});

test("MineTouchCommandPacket uses a dedicated packet id", () => {
    assert.notEqual(MineTouchCommandPacket.getId(), ActivateMinePacket.getId());
});
