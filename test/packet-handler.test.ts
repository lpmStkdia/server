import assert from "node:assert/strict";
import test from "node:test";
import { PacketHandlerService } from "@/packets/packet-handler.service";
import { EnterBattlePacket } from "@/features/battle/battle-flow.packets";

test("registers the battle enter handler for the client packet ID", () => {
  const packetHandlerService = new PacketHandlerService();
  const handler = packetHandlerService.getHandler(EnterBattlePacket.getId());

  assert.ok(handler, "expected EnterBattle handler to be registered");
  assert.equal(handler?.constructor?.name, "EnterBattleHandler");
});
