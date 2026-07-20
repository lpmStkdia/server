import assert from "node:assert";
import test from "node:test";
import { CollisionService } from "@/features/battle/collision.service";

const mapCollision = require("@/maps/mapCollision") as typeof import("@/maps/mapCollision");

function withMapCollision(mock: ReturnType<typeof mapCollision.getMapCollision>, fn: () => void): void {
    const original = mapCollision.getMapCollision;
    mapCollision.getMapCollision = (() => mock) as typeof mapCollision.getMapCollision;
    try {
        fn();
    } finally {
        mapCollision.getMapCollision = original;
    }
}

test("hasSupportBelow treats empty space as void and solid boxes as support", () => {
    const service = new CollisionService();

    withMapCollision({ boxes: [], triangles: [], obstacles: [] }, () => {
        assert.equal(service.hasSupportBelow("map_test", 0, 0, 0), false);
    });

    withMapCollision({
        boxes: [{ minX: -10, maxX: 10, minY: -10, maxY: 10, minZ: 0, maxZ: 100 }],
        triangles: [],
        obstacles: [],
    }, () => {
        assert.equal(service.hasSupportBelow("map_test", 0, 0, 10), true);
    });
});
