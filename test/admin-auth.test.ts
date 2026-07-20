import assert from "node:assert";
import { test } from "node:test";
import { ChatModeratorLevel, isStaffModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

test("isStaffModeratorLevel only allows staff roles", () => {
  assert.equal(isStaffModeratorLevel(ChatModeratorLevel.NONE), false);
  assert.equal(isStaffModeratorLevel(ChatModeratorLevel.CANDIDATE), false);
  assert.equal(isStaffModeratorLevel(ChatModeratorLevel.MODERATOR), true);
  assert.equal(isStaffModeratorLevel(ChatModeratorLevel.ADMINISTRATOR), true);
  assert.equal(isStaffModeratorLevel(ChatModeratorLevel.COMMUNITY_MANAGER), true);
});
