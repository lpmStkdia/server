// Bootstrap de produção: registra o alias @/* apontando para os .js buildados
// (dist/src) antes de carregar o servidor. Necessário porque o tsconfig.json
// mapeia @/* para as fontes .ts em src/, que não existem no runtime de produção.
const path = require("path");
const { spawn } = require("child_process");

const RESTART_MS = Number(process.env.AUTO_RESTART_MS || 24 * 60 * 60 * 1000);
let child;
let restarting = false;

function startChild() {
  child = spawn(process.execPath, [
    "-r",
    "ts-node/register",
    "-r",
    "tsconfig-paths/register",
    path.join(__dirname, "src", "server.ts"),
  ], {
    cwd: __dirname,
    stdio: 'inherit',
    env: { ...process.env, AUTO_RESTART_PARENT: 'true', AUTO_RESTART_MS: String(RESTART_MS) },
  });

  child.on("exit", (code, signal) => {
    if (restarting) {
      restarting = false;
      startChild();
      return;
    }
    if (code === 0) process.exit(0);
    setTimeout(startChild, 1000);
  });

  setTimeout(() => {
    if (!child.killed) {
      restarting = true;
      child.kill("SIGTERM");
    }
  }, RESTART_MS);
}

startChild();
