// Unified hull config: ONE source of truth per hull modification — garage/shop catalog +
// display stats + movement physics (the TankModelData fields the original server sends). Resource ids
// (preview/model) are derived as hull/<id>/m<mod>/{preview,model}. Movement-physics fields are
// optional: when absent the battle workflow falls back to the old formula (uncaptured mods).
import { ResourceManager } from "@/utils/resource.manager";

export interface HullModConfig {
    rank: number; price: number; nextPrice: number; nextRank: number;
    // display stats (shown in the garage)
    armor: number; speed: number; turnSpeed: number; acceleration: number;
    // physics (from the captured TankModelData; mass also used as the displayed mass)
    mass: number;
    reverseAcceleration?: number; sideAcceleration?: number;
    turnAcceleration?: number; reverseTurnAcceleration?: number; dampingCoeff?: number;
}

export interface HullConfig {
    id: string; name: string; description: string; category: string; index: number; type: number;
    mods: HullModConfig[]; // index === modificationID
}

export const hullsData: HullConfig[] = [
    {
        id: "wasp", name: "Wasp", category: "armor", index: 700, type: 2,
        description: "Light, economical and easy to handle — Wasp is a perfect hull for beginners. The upgraded Wasp can reach high speeds, and its small size gives great mobility on the battlefield. Due to its low weight, Wasp is more vulnerable to being tossed by enemy shells.",
        mods: [
            { rank: 2, price: 200, nextPrice: 7650, nextRank: 9, armor: 94, speed: 10.8, turnSpeed: 93.9, acceleration: 9.4, mass: 1100, reverseAcceleration: 12, sideAcceleration: 15, turnAcceleration: 2.79, reverseTurnAcceleration: 4.54, dampingCoeff: 900 },
            { rank: 9, price: 7650, nextPrice: 62450, nextRank: 16, armor: 121, speed: 11, turnSpeed: 100.84, acceleration: 9.87, mass: 1483, reverseAcceleration: 13.74, sideAcceleration: 18.12, turnAcceleration: 3.04, reverseTurnAcceleration: 5.21, dampingCoeff: 900 },
            { rank: 16, price: 62450, nextPrice: 172600, nextRank: 24, armor: 149, speed: 12, turnSpeed: 123.76, acceleration: 11.33, mass: 1817, reverseAcceleration: 15.26, sideAcceleration: 20.87, turnAcceleration: 3.25, reverseTurnAcceleration: 5.79, dampingCoeff: 900 },
            { rank: 24, price: 172600, nextPrice: 0, nextRank: 24, armor: 180, speed: 13, turnSpeed: 150, acceleration: 13, mass: 2200, reverseAcceleration: 17, sideAcceleration: 24, turnAcceleration: 3.490658503988659, reverseTurnAcceleration: 6.457718232379019, dampingCoeff: 900 },
        ],
    },
    {
        id: "hornet", name: "Hornet", category: "armor", index: 750, type: 2,
        description: "This compact hull uses state-of-the-art composite materials, making it light and fast while providing high survivability even after a direct hit. Hornet is perfect for hit-and-run attacks.",
        mods: [
            { rank: 5, price: 500, nextPrice: 21000, nextRank: 12, armor: 122, speed: 10, turnSpeed: 90.8, acceleration: 10.4, mass: 1409, reverseAcceleration: 16.38, sideAcceleration: 12.8, turnAcceleration: 2.82, reverseTurnAcceleration: 3.85, dampingCoeff: 1250 },
            { rank: 12, price: 21000, nextPrice: 86600, nextRank: 19, armor: 154, speed: 10.7, turnSpeed: 105.2, acceleration: 11.7, mass: 1774, reverseAcceleration: 18.83, sideAcceleration: 15.09, turnAcceleration: 2.88, reverseTurnAcceleration: 4.49, dampingCoeff: 1250 },
            { rank: 19, price: 86600, nextPrice: 215500, nextRank: 27, armor: 187, speed: 11.5, turnSpeed: 119.7, acceleration: 13.1, mass: 2139, reverseAcceleration: 21.26, sideAcceleration: 17.37, turnAcceleration: 2.93, reverseTurnAcceleration: 5.13, dampingCoeff: 1250 },
            { rank: 27, price: 215500, nextPrice: 0, nextRank: 27, armor: 210, speed: 12, turnSpeed: 130, acceleration: 14, mass: 2400, reverseAcceleration: 23, sideAcceleration: 19, turnAcceleration: 2.9670597283903604, reverseTurnAcceleration: 5.585053606381854, dampingCoeff: 1250 },
        ],
    },
    {
        id: "hunter", name: "Hunter", category: "armor", index: 800, type: 2,
        description: "Hunter is the most versatile hull in the game. Thanks to the balance between reinforced steel armor plates and low energy consumption, this hull suits many roles — from speedsters to marksmen. Its versatility keeps you effective in any battlefield situation.",
        mods: [
            { rank: 1, price: 0, nextPrice: 3200, nextRank: 8, armor: 144, speed: 8, turnSpeed: 75.8, acceleration: 9.6, mass: 1700, reverseAcceleration: 10, sideAcceleration: 8.5, turnAcceleration: 2.09, reverseTurnAcceleration: 3.32, dampingCoeff: 1500 },
            { rank: 8, price: 3200, nextPrice: 54400, nextRank: 15, armor: 187, speed: 8.6, turnSpeed: 95.3, acceleration: 11, mass: 2096, reverseAcceleration: 12.43, sideAcceleration: 10.78, turnAcceleration: 2.31, reverseTurnAcceleration: 3.79, dampingCoeff: 1500 },
            { rank: 15, price: 54400, nextPrice: 158300, nextRank: 23, armor: 230, speed: 9.2, turnSpeed: 114.9, acceleration: 12.3, mass: 2491, reverseAcceleration: 14.87, sideAcceleration: 13.07, turnAcceleration: 2.52, reverseTurnAcceleration: 4.27, dampingCoeff: 1500 },
            { rank: 23, price: 158300, nextPrice: 0, nextRank: 23, armor: 285, speed: 10, turnSpeed: 140, acceleration: 14, mass: 3000, reverseAcceleration: 18, sideAcceleration: 16, turnAcceleration: 2.792526803190927, reverseTurnAcceleration: 4.886921905584122, dampingCoeff: 1500 },
        ],
    },
    {
        id: "dictator", name: "Dictator", category: "armor", index: 850, type: 2,
        description: "Thanks to an enhanced active defense system and modern composite materials, this hull effectively absorbs impact energy from most calibers. With the Dictator, you can fight on the front line. As one of the larger, well-protected hulls, it trades speed for survivability and can be an easy target.",
        mods: [
            { rank: 4, price: 400, nextPrice: 16550, nextRank: 11, armor: 188, speed: 7, turnSpeed: 89, acceleration: 10.9, mass: 2170, reverseAcceleration: 12.04, sideAcceleration: 9.04, turnAcceleration: 1.81, reverseTurnAcceleration: 3.41, dampingCoeff: 2500 },
            { rank: 11, price: 16550, nextPrice: 78550, nextRank: 18, armor: 243, speed: 7.3, turnSpeed: 103.3, acceleration: 12.3, mass: 2722 },
            { rank: 18, price: 78550, nextPrice: 201200, nextRank: 26, armor: 298, speed: 7.7, turnSpeed: 117.7, acceleration: 13.8, mass: 2961, reverseAcceleration: 16.91, sideAcceleration: 13.91, turnAcceleration: 2.13, reverseTurnAcceleration: 4.69, dampingCoeff: 2500 },
            { rank: 26, price: 201200, nextPrice: 0, nextRank: 26, armor: 345, speed: 8, turnSpeed: 130, acceleration: 15, mass: 3300, reverseAcceleration: 19, sideAcceleration: 16, turnAcceleration: 2.2689280275926285, reverseTurnAcceleration: 5.235987755982989, dampingCoeff: 2500 },
        ],
    },
    {
        id: "viking", name: "Viking", category: "armor", index: 900, type: 2,
        description: "This hull incorporates modern military technologies. Reinforced armor and the Type-2 engine make Viking a highly versatile hull. Attack enemies or cover teammates — Viking performs reliably in almost any situation.",
        mods: [
            { rank: 7, price: 700, nextPrice: 29900, nextRank: 14, armor: 195, speed: 7.8, turnSpeed: 80.6, acceleration: 11.5, mass: 2039, reverseAcceleration: 14.09, sideAcceleration: 10.61, turnAcceleration: 2.28, reverseTurnAcceleration: 3.16, dampingCoeff: 2000 },
            { rank: 14, price: 29900, nextPrice: 102700, nextRank: 21, armor: 244, speed: 8.3, turnSpeed: 92.7, acceleration: 12.6, mass: 2435, reverseAcceleration: 16.52, sideAcceleration: 13.65, turnAcceleration: 2.49, reverseTurnAcceleration: 3.58, dampingCoeff: 2000 },
            { rank: 21, price: 102700, nextPrice: 244200, nextRank: 29, armor: 294, speed: 8.8, turnSpeed: 104.8, acceleration: 14.4, mass: 2830, reverseAcceleration: 18.96, sideAcceleration: 16.7, turnAcceleration: 2.7, reverseTurnAcceleration: 4.01, dampingCoeff: 2000 },
            { rank: 29, price: 244200, nextPrice: 0, nextRank: 29, armor: 315, speed: 9, turnSpeed: 110, acceleration: 15, mass: 3000, reverseAcceleration: 20, sideAcceleration: 18, turnAcceleration: 2.792526803190927, reverseTurnAcceleration: 4.1887902047863905, dampingCoeff: 2000 },
        ],
    },
    {
        id: "titan", name: "Titan", category: "armor", index: 950, type: 2,
        description: "Titan alloy armor plates combined with special geometry make this hull highly effective even against large-caliber weapons. With Titan you can dive into the thick of battle without hesitation. Note that its low speed makes it less suitable for fast flanking maneuvers.",
        mods: [
            { rank: 3, price: 300, nextPrice: 12100, nextRank: 10, armor: 224, speed: 5.3, turnSpeed: 55.7, acceleration: 11.7, mass: 3571 },
            { rank: 10, price: 12100, nextPrice: 70500, nextRank: 17, armor: 289, speed: 5.5, turnSpeed: 67.1, acceleration: 13.1, mass: 3783, reverseAcceleration: 12.13, sideAcceleration: 13.91, turnAcceleration: 1.39, reverseTurnAcceleration: 3.34, dampingCoeff: 2100 },
            { rank: 17, price: 70500, nextPrice: 187000, nextRank: 25, armor: 355, speed: 5.8, turnSpeed: 78.6, acceleration: 14.6, mass: 4391, reverseAcceleration: 14.57, sideAcceleration: 16.96, turnAcceleration: 1.65, reverseTurnAcceleration: 3.76, dampingCoeff: 2100 },
            { rank: 25, price: 187000, nextPrice: 0, nextRank: 25, armor: 420, speed: 6, turnSpeed: 90, acceleration: 16, mass: 5000, reverseAcceleration: 17, sideAcceleration: 20, turnAcceleration: 1.9198621771937625, reverseTurnAcceleration: 4.1887902047863905, dampingCoeff: 2100 },
        ],
    },
    {
        id: "mammoth", name: "Mammoth", category: "armor", index: 1000, type: 2,
        description: "This is not a tank — it is a fortress on tracks. Mammoth is the flagship hull: extremely heavy and reinforced with superconcrete. Its slowness does not prevent the Mammoth from dominating engagements against multiple enemy tanks.",
        mods: [
            { rank: 6, price: 600, nextPrice: 25450, nextRank: 13, armor: 297, speed: 4.4, turnSpeed: 54, acceleration: 11.3, mass: 3935, reverseAcceleration: 8.09, sideAcceleration: 17.17, turnAcceleration: 1.36, reverseTurnAcceleration: 2.81, dampingCoeff: 2000 },
            { rank: 13, price: 25450, nextPrice: 94650, nextRank: 20, armor: 376, speed: 4.6, turnSpeed: 64.1, acceleration: 12.7, mass: 4543, reverseAcceleration: 9.61, sideAcceleration: 20.22, turnAcceleration: 1.49, reverseTurnAcceleration: 3.07, dampingCoeff: 2000 },
            { rank: 20, price: 94650, nextPrice: 229900, nextRank: 28, armor: 455, speed: 4.9, turnSpeed: 74.2, acceleration: 14.2, mass: 5152, reverseAcceleration: 11.13, sideAcceleration: 23.26, turnAcceleration: 1.65, reverseTurnAcceleration: 3.34, dampingCoeff: 2000 },
            { rank: 28, price: 229900, nextPrice: 0, nextRank: 28, armor: 500, speed: 5, turnSpeed: 80, acceleration: 15, mass: 5500, reverseAcceleration: 12, sideAcceleration: 25, turnAcceleration: 1.7453292519943295, reverseTurnAcceleration: 3.490658503988659, dampingCoeff: 2000 },
        ],
    },
];

/**
 * XT variant of a base hull: identical stats AND physics per mod (user decision: XT is a pure skin —
 * differs only in model/sfx and upgrade prices). Prices: m0 costs the same, m1–m3 cost 60% of the
 * base (exact official rule — reproduces the captured hornet_xt/viking_xt prices to the crystal).
 * NOTE: the official server gives hornet_xt/viking_xt slightly different m0–m2 primary stats (own
 * micro-upgrade curve, see the 2026-07-03 garage capture); we intentionally deviate for consistency.
 */
function xtHullVariant(baseId: string, name: string, index: number, description: string): HullConfig {
    const base = hullsData.find((h) => h.id === baseId)!;
    const prices = base.mods.map((m, i) => (i === 0 ? m.price : Math.round(m.price * 0.6)));
    return {
        ...base, id: `${baseId}_xt`, name, index, description,
        mods: base.mods.map((m, i) => ({ ...m, price: prices[i], nextPrice: i + 1 < prices.length ? prices[i + 1] : 0 })),
    };
}

hullsData.push(
    xtHullVariant("mammoth", "Mammoth XT", 610, "The elite Mammoth XT is a ceremonial fortress. Darkened superconcrete plates show that this flagship has prevailed in countless battles."),
    xtHullVariant("hornet", "Hornet XT", 620, "The elite Hornet XT features a unique look. Spectacular armor plates styled like wings emphasize its speed and elegance."),
    xtHullVariant("viking", "Viking XT", 630, "The distinctive Viking XT stands out for its appearance. The characteristic armor pattern is crafted in a stern Nordic style."),
    xtHullVariant("wasp", "Wasp XT", 640, "The exclusive Wasp XT retains the agility of the original model with a unique fairing reserved for the fastest pilots on the battlefield."),
    xtHullVariant("titan", "Titan XT", 650, "The elite Titan XT wears armor with an exclusive pattern. Beneath it, the same legendary alloy that holds the line in any battle."),
    xtHullVariant("hunter", "Hunter XT", 660, "The exclusive Hunter XT preserves the original's legendary balance under elite golden armor — reserved for those who have proven their worth on the battlefield."),
);

const byId = new Map(hullsData.map((h) => [h.id, h]));

/** A hull modification's full config (movement physics etc.), keyed like the battle workflow does. */
export function getHullMod(baseId: string, modId: number): HullModConfig | undefined {
    return byId.get(baseId)?.mods[modId];
}

/**
 * Adapts a HullConfig to the legacy garage "blueprint" shape (resource accessors + the `properts`
 * stat rows the client renders). Keeps garage.service/item.utils working unchanged off a single
 * source. Resource ids are derived: hull/<id>/m<mod>/{preview,model}.
 */
export function toHullBlueprint(h: HullConfig) {
    return {
        id: h.id, name: h.name, description: h.description, category: h.category, index: h.index, type: h.type,
        baseItemId: () => ResourceManager.getIdlowById(`hull/${h.id}/m0/preview` as any),
        modifications: h.mods.map((m, modId) => ({
            modificationID: modId,
            next_price: m.nextPrice,
            next_rank: m.nextRank,
            previewResourceId: () => ResourceManager.getIdlowById(`hull/${h.id}/m${modId}/preview` as any),
            rank: m.rank,
            price: m.price,
            object3ds: () => ResourceManager.getIdlowById(`hull/${h.id}/m${modId}/model` as any),
            properts: [
                { property: "HULL_ARMOR", value: String(m.armor), subproperties: null },
                { property: "HULL_SPEED", value: String(m.speed), subproperties: null },
                { property: "HULL_TURN_SPEED", value: String(m.turnSpeed), subproperties: null },
                { property: "HULL_MASS", value: String(m.mass), subproperties: null },
                { property: "HULL_POWER", value: null, subproperties: [{ property: "HULL_ACCELERATION", value: String(m.acceleration), subproperties: null }] },
            ],
        })),
    };
}
