// Arquivo gerado automaticamente por scripts/buildMapCollision.ts. Não edite manualmente.

// halfX/halfY = collision half-extents along the hull model's X (width) / Y (length) axes;
// zMin/zMax relative to the tank origin (bottom). Used for the oriented flag-contact box.
export interface IHullBox { halfX: number; halfY: number; zMin: number; zMax: number; }

export const hullCollision: { [hull: string]: IHullBox } = {
    "dictator": { halfX: 181.5, halfY: 321.8, zMin: 0, zMax: 231 },
    "hornet": { halfX: 138.6, halfY: 256, zMin: 0, zMax: 162 },
    "hornet_xt": { halfX: 138.6, halfY: 256, zMin: 0, zMax: 162 },
    "hunter": { halfX: 165, halfY: 262, zMin: 0, zMax: 181.7 },
    "hunter_xt": { halfX: 165, halfY: 262, zMin: 0, zMax: 181.7 },
    "mammoth": { halfX: 184.9, halfY: 311, zMin: 0, zMax: 177.9 },
    "mammoth_xt": { halfX: 184.9, halfY: 311, zMin: 0, zMax: 177.9 },
    "titan": { halfX: 165, halfY: 305.3, zMin: 0, zMax: 198 },
    "titan_xt": { halfX: 165, halfY: 305.3, zMin: 0, zMax: 198 },
    "viking": { halfX: 171.4, halfY: 270.3, zMin: 0, zMax: 145.1 },
    "viking_xt": { halfX: 171.4, halfY: 270.3, zMin: 0, zMax: 145.1 },
    "wasp": { halfX: 132, halfY: 231, zMin: 0, zMax: 181.5 },
    "wasp_xt": { halfX: 132, halfY: 231, zMin: 0, zMax: 181.5 },
};
