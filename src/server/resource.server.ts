import { CLAN_LOGO_DIR, CLAN_LOGO_ROUTE } from "@/features/clan/clan.logo";
import { RankedMatchmakingService, RankedModeId } from "@/features/ranked/ranked.matchmaking.service";
import { buildProfileViewModel, getProfilePageHtml } from "@/features/profile/profile.web.server";
import { PanelSession, resolvePanelToken } from "@/features/webpanel/webpanel.auth";
import { SettingsService } from "@/features/settings/settings.service";
import { UserService } from "@/shared/services/user.service";
import { RankService } from "@/shared/services/rank.service";
import logger from "@/utils/logger";
import cors from "cors";
import dotenv from "dotenv";
import express, { NextFunction, Request, Response } from "express";
import fs from "fs";
import { createServer, Server } from "http";
import path from "path";

dotenv.config();

export class ResourceServer {
  private app: express.Application;
  private port: number;
  private resourceDir: string;
  private resourceRoots: string[];
  private server: Server | null = null;
  private readonly userService: UserService;
  private readonly rankService: RankService;

  constructor(private matchmaking: RankedMatchmakingService, private settingsService: SettingsService, portOverride?: number) {
    this.app = express();
    this.app.use(cors());
    this.port = portOverride ?? (process.env.RESOURCE_PORT ? parseInt(process.env.RESOURCE_PORT) : 9999);
    this.userService = new UserService(new RankService());
    this.rankService = new RankService();
    this.resourceRoots = [
      path.join(__dirname, "../../.resource"),
      path.join(__dirname, "../../resources"),
    ];
    this.resourceDir = this.resourceRoots[0];
    this.setupRoutes();
  }

  private resolveResourceFilePath(relativePath: string): string | null {
    const normalizedPath = relativePath.replace(/^\/+/, "").replace(/\\/g, "/");
    if (!normalizedPath || normalizedPath.includes("..")) {
      return null;
    }

    for (const resourceRoot of this.resourceRoots) {
      const candidatePath = path.resolve(resourceRoot, normalizedPath);
      const relativeToRoot = path.relative(resourceRoot, candidatePath);
      if (relativeToRoot.startsWith("..") || path.isAbsolute(relativeToRoot)) {
        continue;
      }
      if (fs.existsSync(candidatePath) && fs.statSync(candidatePath).isFile()) {
        return candidatePath;
      }
    }
    return null;
  }

  private streamResourceFile(res: Response, filePath: string): void {
    const extension = path.extname(filePath).toLowerCase();
    const contentTypeMap: Record<string, string> = {
      ".xml": "application/xml; charset=utf-8",
      ".swf": "application/x-shockwave-flash",
      ".png": "image/png",
      ".jpg": "image/jpeg",
      ".jpeg": "image/jpeg",
      ".gif": "image/gif",
      ".webp": "image/webp",
      ".ico": "image/x-icon",
      ".json": "application/json; charset=utf-8",
      ".txt": "text/plain; charset=utf-8",
      ".html": "text/html; charset=utf-8",
      ".css": "text/css; charset=utf-8",
      ".js": "application/javascript; charset=utf-8",
      ".map": "application/json; charset=utf-8",
      ".data": "application/octet-stream",
      ".tara": "application/octet-stream",
    };

    res.status(200).type(contentTypeMap[extension] || "application/octet-stream");
    const stream = fs.createReadStream(filePath);
    stream.on("error", () => {
      if (!res.headersSent) {
        res.status(500).type("text/plain; charset=utf-8").send("Unable to read resource");
      }
    });
    stream.pipe(res);
  }

  private setupRoutes(): void {
    this.app.get("/", (req: Request, res: Response) => {
      res.send("Resource Server is running");
    });

    this.app.get("/health", (req: Request, res: Response) => {
      res.json({ ok: true, resourceRoots: this.resourceRoots });
    });

    this.app.get("/user/:username", async (req: Request, res: Response) => {
      try {
        const user = await this.userService.findUserByUsername(req.params.username);
        if (!user) {
          res.status(404).type("text/plain; charset=utf-8").send("Player not found");
          return;
        }

        const view = buildProfileViewModel(user, this.rankService);
        res.type("html; charset=utf-8").send(getProfilePageHtml(view));
      } catch (error: any) {
        logger.error("Failed to render profile page", { error: error?.message, username: req.params.username });
        res.status(500).type("text/plain; charset=utf-8").send("Unable to load profile");
      }
    });

    this.app.get("/email/confirm", async (req: Request, res: Response) => {
      const token = typeof req.query.token === "string" ? req.query.token : undefined;
      if (!token) {
        res.status(400).type("text/plain; charset=utf-8").send("Invalid token.");
        return;
      }

      try {
        await this.settingsService.confirmEmailToken(token);
        res.status(200).type("text/plain; charset=utf-8").send("Email confirmed successfully.");
      } catch (error: any) {
        logger.warn("Email confirmation failed", { error: error.message, token });
        res.status(400).type("text/plain; charset=utf-8").send("Token invalid or expired.");
        return;
      }
    });

    this.app.post("/password/request", async (req: Request, res: Response) => {
      const email = typeof req.body?.email === "string" ? req.body.email : undefined;
      if (!email) {
        res.status(400).type("text/plain; charset=utf-8").send("Invalid email.");
        return;
      }

      try {
        await this.settingsService.requestPasswordReset(email);
        res.status(200).type("text/plain; charset=utf-8").send("Password reset instructions sent to the email address.");
      } catch (error: any) {
        logger.warn("Password reset request failed", { error: error.message, email });
        res.status(400).type("text/plain; charset=utf-8").send("Unable to process password reset request.");
      }
    });

    this.app.get("/password/reset", async (req: Request, res: Response) => {
      const token = typeof req.query.token === "string" ? req.query.token : undefined;
      if (!token) {
        res.status(400).type("text/plain; charset=utf-8").send("Invalid token.");
        return;
      }

      try {
        const valid = await this.settingsService.validatePasswordResetToken(token);
        if (!valid) {
          res.status(400).type("text/plain; charset=utf-8").send("Token invalid or expired.");
          return;
        }

        res.status(200).type("text/plain; charset=utf-8").send(
          "Password reset token is valid. Submit a POST request to /password/reset with { token, password } to complete the reset."
        );
      } catch (error: any) {
        logger.warn("Password reset token validation failed", { error: error.message, token });
        res.status(400).type("text/plain; charset=utf-8").send("Token invalid or expired.");
        return;
      }
    });

    this.app.post("/password/reset", async (req: Request, res: Response) => {
      const token = typeof req.body?.token === "string" ? req.body.token : undefined;
      const password = typeof req.body?.password === "string" ? req.body.password : undefined;
      if (!token || !password) {
        res.status(400).type("text/plain; charset=utf-8").send("Invalid request.");
        return;
      }

      try {
        await this.settingsService.resetPasswordWithToken(token, password);
        res.status(200).type("text/plain; charset=utf-8").send("Password reset successfully.");
      } catch (error: any) {
        logger.warn("Password reset failed", { error: error.message, token });
        res.status(400).type("text/plain; charset=utf-8").send("Token invalid or expired.");
      }
    });

    this.app.get("/config.xml", (req: Request, res: Response) => {
      const candidatePath = this.resolveResourceFilePath("config.xml");
      if (candidatePath) {
        this.streamResourceFile(res, candidatePath);
        return;
      }
      res.status(404).send("Resource not found");
    });

    // Uploaded clan logos live outside .resource (which build:resources overwrites); served under /clanlogo.
    this.app.use(CLAN_LOGO_ROUTE, express.static(CLAN_LOGO_DIR));
    // In-game web panel (HTMLLoader target) — served OPAQUE now (competitive matchmaking UI). The old
    // transparent/borderless idea was the blocker under Stage3D; an opaque modal renders fine. Paired with
    // scripts/patches/webpanel-button.js. no-store so the AIR WebKit never shows a stale page.
    this.app.use(
      "/panel",
      express.static(path.join(__dirname, "../../webpanel"), {
        etag: false,
        lastModified: false,
        setHeaders: (res) => {
          res.setHeader("Cache-Control", "no-store");
          // StageWebView (Windows) usa o motor IE/Trident e abre em modo IE7 por padrão. Este header
          // força o modo IE11 standards (Date.now/textContent/CSS-animations/flexbox funcionam).
          res.setHeader("X-UA-Compatible", "IE=edge");
        },
      })
    );
    this.setupRankedApi();
    this.app.use((req: Request, res: Response, next: NextFunction) => {
      const url = new URL(req.url || "/", `http://${req.headers.host || "127.0.0.1"}`);
      const pathname = decodeURIComponent(url.pathname);
      logger.info("Resource request", { pathname, url: req.url });

      if (pathname === "/") {
        res.status(200).type("text/plain; charset=utf-8").send("Resource Server is running");
        return;
      }

      if (pathname === "/health") {
        res.status(200).type("application/json; charset=utf-8").json({ ok: true, resourceRoots: this.resourceRoots });
        return;
      }

      if (pathname === "/config.xml") {
        const candidatePath = path.resolve(this.resourceRoots[1], "config.xml");
        if (fs.existsSync(candidatePath) && fs.statSync(candidatePath).isFile()) {
          res.status(200).type("application/xml; charset=utf-8").sendFile(candidatePath);
          return;
        }
        res.status(404).type("text/plain; charset=utf-8").send("Resource not found");
        return;
      }

      const candidatePath = this.resolveResourceFilePath(pathname);
      if (candidatePath) {
        this.streamResourceFile(res, candidatePath);
        return;
      }

      next();
    });

    this.app.use((req: Request, res: Response) => {
      res.status(404).type("text/plain; charset=utf-8").send("Resource not found");
    });
  }

  /**
   * API HTTP do painel de Partida Competitiva. Autenticada pelo token de sessão que o servidor injeta na
   * URL do painel (?token=...) — o mesmo processo do game server, então o token store é compartilhado.
   * FASE 0b: só valida a ponte (whoami/echo). Os endpoints reais de fila/ranking entram na Fase 1.
   */
  private setupRankedApi(): void {
    this.app.use("/ranked", express.json());

    // resolve o token da querystring e anexa a sessão em res.locals; 401 se inválido
    const auth = (req: Request, res: Response, next: () => void): void => {
      const token = typeof req.query.token === "string" ? req.query.token : undefined;
      const session = resolvePanelToken(token);
      if (!session) {
        res.status(401).json({ error: "token inválido ou expirado" });
        return;
      }
      res.locals.session = session;
      next();
    };

    // GET /ranked/whoami → identidade da sessão (prova a ponte autenticada)
    this.app.get("/ranked/whoami", auth, async (_req: Request, res: Response) => {
      const s = res.locals.session as PanelSession;
      res.json({ username: s.username, tag: await this.matchmaking.getUserTag(s.userId) });
    });

    // GET /ranked/status → estado atual do jogador na fila/partida (?mode= define o MMR exibido no idle)
    this.app.get("/ranked/status", auth, async (req: Request, res: Response) => {
      const s = res.locals.session as PanelSession;
      res.json(await this.matchmaking.status(s.userId, req.query.mode as RankedModeId));
    });

    // POST /ranked/enqueue → entra na fila do modo escolhido (body {mode: "1v1"|"2v2"})
    this.app.post("/ranked/enqueue", auth, async (req: Request, res: Response) => {
      const s = res.locals.session as PanelSession;
      const r = await this.matchmaking.enqueue(s.userId, s.username, (req.body?.mode as RankedModeId) ?? "1v1");
      res.status(r.ok ? 200 : 409).json(r);
    });

    // POST /ranked/cancel → sai da fila / cancela o pareamento (tela "partida encontrada")
    this.app.post("/ranked/cancel", auth, (_req: Request, res: Response) => {
      const s = res.locals.session as PanelSession;
      res.json(this.matchmaking.cancel(s.userId));
    });

    // POST /ranked/enter → o painel confirma o fim da contagem local → servidor entra os dois
    this.app.post("/ranked/enter", auth, (_req: Request, res: Response) => {
      const s = res.locals.session as PanelSession;
      res.json(this.matchmaking.playerReady(s.userId));
    });

    // POST /ranked/dismiss → dispensa a tela de resultado ("Sair")
    this.app.post("/ranked/dismiss", auth, (_req: Request, res: Response) => {
      const s = res.locals.session as PanelSession;
      res.json(this.matchmaking.dismissResult(s.userId));
    });

    // GET /ranked/leaderboard?mode= → classificação do modo (top N) + posição do jogador
    this.app.get("/ranked/leaderboard", auth, async (req: Request, res: Response) => {
      const s = res.locals.session as PanelSession;
      const mode = (req.query.mode as RankedModeId) ?? "1v1";
      const [top, you] = await Promise.all([
        this.matchmaking.getLeaderboard(mode, 20),
        this.matchmaking.getPlayerPosition(s.userId, mode),
      ]);
      res.json({ top, you });
    });

    // GET /ranked/miners → rank de maiores mineiros do servidor (quem mais colocou minas)
    this.app.get("/ranked/miners", auth, async (_req: Request, res: Response) => {
      res.json({ top: await this.matchmaking.getTopMiners(20) });
    });
  }

  public start(): void {
    this.server = createServer(this.app);

    this.server.listen(this.port, () => {
      const address = this.server?.address();
      if (address && typeof address === "object" && "port" in address) {
        this.port = address.port;
      }
      logger.info(`Resource Server started`, {
        port: this.port,
        resourceDir: this.resourceDir,
      });
    });
  }

  public getPort(): number {
    return this.port;
  }

  public stop(): Promise<void> {
    return new Promise((resolve, reject) => {
      if (!this.server) {
        logger.info("Resource Server not running");
        return resolve();
      }
      this.server.close((err?: Error) => {
        if (err) {
          logger.error("Error stopping Resource Server", { error: err });
          return reject(err);
        }
        resolve();
      });
    });
  }
}
