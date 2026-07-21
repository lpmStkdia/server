// Bootstrap de produção: registra o alias @/* apontando para os .js buildados
// (dist/src) antes de carregar o servidor. Necessário porque o tsconfig.json
// mapeia @/* para as fontes .ts em src/, que não existem no runtime de produção.
//
// This is also the process supervisor recommended in PM2.md: it spawns the actual server as a
// child process (with AUTO_RESTART_PARENT=true) and decides what to do when that child exits,
// based on its exit code:
//   - RESTART_EXIT_CODE (75): the child asked to be restarted (admin panel "Restart server now",
//     or the scheduled 24h auto-restart in AdminServer) and has already shut down gracefully.
//     Spawn a fresh child immediately.
//   - 0: a real stop (SIGTERM from PM2/the OS). Exit too, and stay down.
//   - anything else: an unexpected crash. Back off briefly, then restart.
//
// The 24h auto-restart schedule itself lives entirely in AdminServer (src/features/admin/admin.server.ts)
// so there is a single source of truth for "when is the next restart" — this file only reacts to it.
const path = require("path");
const { spawn } = require("child_process");

// Must match RESTART_EXIT_CODE in src/server.ts.
const RESTART_EXIT_CODE = 75;

let child = null;

function startChild() {
  child = spawn(process.execPath, [
    "-r",
    "ts-node/register",
    "-r",
    "tsconfig-paths/register",
    path.join(__dirname, "src", "server.ts"),
  ], {
    cwd: __dirname,
    stdio: "inherit",
    env: { ...process.env, AUTO_RESTART_PARENT: "true" },
  });

  child.on("exit", (code, signal) => {
    child = null;

    if (code === RESTART_EXIT_CODE) {
      console.log("[start.js] Child requested a restart, spawning a fresh instance.");
      startChild();
      return;
    }

    if (code === 0) {
      console.log("[start.js] Child stopped cleanly, shutting down.");
      process.exit(0);
      return;
    }

    console.error(`[start.js] Child exited unexpectedly (code=${code}, signal=${signal}). Restarting in 1s.`);
    setTimeout(startChild, 1000);
  });
}

// Forward real termination signals to the child so `pm2 stop`, `pm2 restart`, or Ctrl-C actually
// stop the underlying server instead of leaving it running as an orphan.
function forwardSignal(sig) {
  if (child) child.kill(sig);
}
process.on("SIGTERM", () => forwardSignal("SIGTERM"));
process.on("SIGINT", () => forwardSignal("SIGINT"));

startChild();