import test from "node:test";
import assert from "node:assert/strict";
import http from "node:http";
import { ResourceServer } from "../src/server/resource.server";

function createMatchmakingStub() {
  return {
    getUserTag: async () => "",
    status: async () => ({}),
    enqueue: async () => ({ ok: true }),
    cancel: () => ({ ok: true }),
    playerReady: () => ({ ok: true }),
    dismissResult: () => ({ ok: true }),
    getLeaderboard: async () => [],
    getPlayerPosition: async () => null,
    getTopMiners: async () => [],
  };
}

test("resource server handles ranked API routes over HTTP", async () => {
  const server = new ResourceServer(createMatchmakingStub() as any, 0);
  server.start();

  try {
    await new Promise<void>((resolve, reject) => {
      const started = setInterval(() => {
        if (server.getPort() > 0) {
          clearInterval(started);
          resolve();
        }
      }, 10);
      setTimeout(() => {
        clearInterval(started);
        reject(new Error("resource server did not bind"));
      }, 2000);
    });

    const port = server.getPort();
    const response = await new Promise<{ statusCode: number; body: string }>((resolve, reject) => {
      const req = http.get(`http://127.0.0.1:${port}/ranked/whoami`, (res) => {
        let body = "";
        res.setEncoding("utf8");
        res.on("data", (chunk) => {
          body += chunk;
        });
        res.on("end", () => {
          resolve({ statusCode: res.statusCode ?? 0, body });
        });
      });
      req.on("error", reject);
    });

    assert.equal(response.statusCode, 401);
    assert.match(response.body, /token/i);
  } finally {
    await server.stop();
  }
});
