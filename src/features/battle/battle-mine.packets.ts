import { BasePacket } from "@/packets/base.packet";
import { packetClass } from "@/packets/packet-class";
import { defs, compileCodec } from "protanki-protocol";

// Mine lifecycle packets. Wire formats verified against the 2026-06-19 logs.
// IDs e schemas em `protanki-protocol` (defs.battle.*).

// S->C: a mine is placed on the field. Wire: optString id, vector3 position (PLAIN — 3 floats, no
// present byte), optString owner nickname. The client hides enemies' mines until they activate.
export const PutMinePacket = packetClass(defs.battle.PutMine);
export type PutMinePacket = InstanceType<typeof PutMinePacket>;

// C->S: the client detected a direct hull touch with a mine and reports the mine id that was hit.
// This is intentionally tiny and fire-and-forget so it can be sent from the client immediately on
// the same collision that the client already uses to play the explosion/visual effect.
export class MineTouchCommandPacket extends BasePacket {
    static readonly codec = compileCodec(defs.battle.ActivateMine.schema!);
    mineId: string | null = null;

    constructor(data?: { mineId?: string | null }) {
        super();
        if (data) this.mineId = data.mineId ?? null;
    }

    read(buffer: Buffer): void {
        MineTouchCommandPacket.codec.read(buffer, this);
    }

    write(): Buffer {
        return MineTouchCommandPacket.codec.write(this);
    }

    static getId(): number {
        return defs.battle.ActivateMine.id;
    }
}

// S->C: a mine becomes ARMED (sent ~1s after PutMine). Wire: optString id.
export const ActivateMinePacket = packetClass(defs.battle.ActivateMine);
export type ActivateMinePacket = InstanceType<typeof ActivateMinePacket>;

// S->C: an armed mine detonates (an enemy stepped on it). Wire: optString id, optString victim
// nickname. The client plays the explosion and removes the mine; damage is applied server-side.
export const DetonateMinePacket = packetClass(defs.battle.DetonateMine);
export type DetonateMinePacket = InstanceType<typeof DetonateMinePacket>;

// S->C: removes all of a player's mines (e.g. on death/leave). Wire: optString owner nickname.
export const RemoveMinesPacket = packetClass(defs.battle.RemoveMines);
export type RemoveMinesPacket = InstanceType<typeof RemoveMinesPacket>;
