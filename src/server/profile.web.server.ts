import { RankService } from "@/shared/services/rank.service";
import { UserService } from "@/shared/services/user.service";
import { buildProfileViewModel, getProfilePageHtml } from "@/features/profile/profile.web.server";
import logger from "@/utils/logger";
import cors from "cors";
import express, { Request, Response } from "express";
import fs from "fs";
import path from "path";
import { createServer, Server } from "http";

export class ProfileWebServer {
  private app: express.Application;
  private server: Server | null = null;
  private readonly port: number;
  private readonly userService: UserService;
  private readonly rankService: RankService;

  constructor(portOverride?: number) {
    this.app = express();
    this.app.use(cors());
    this.app.use(express.static(path.join(__dirname, "../../.resource")));
    this.app.use(express.static(path.join(__dirname, "../../resources")));
    this.port = portOverride ?? (process.env.PROFILE_PORT ? parseInt(process.env.PROFILE_PORT) : 4607);
    this.userService = new UserService(new RankService());
    this.rankService = new RankService();
    this.setupRoutes();
  }

  private setupRoutes(): void {
    this.app.get("/", (_req: Request, res: Response) => {
      res.setHeader("Content-Type", "text/html; charset=utf-8");
      res.send(`<!doctype html>
        <html lang="en">
        <head><meta charset="utf-8" /><title>Tanki Public Profiles</title><style>body{font-family:Inter,Arial,sans-serif;background:#07111f;color:#e9f2ff;display:grid;place-items:center;min-height:100vh;margin:0;padding:24px;} .box{max-width:720px;padding:32px;border-radius:24px;background:rgba(12,24,40,.95);box-shadow:0 24px 70px rgba(0,0,0,.25);} h1{margin-top:0;} a{color:#41d1ff;}</style></head>
        <body><div class="box"><h1>Public Tanki Profiles</h1><p>Open a profile like <a href="/user/EpicRelax">/user/EpicRelax</a>.</p><p>Use this host as the public profile domain; the service now runs on port 80 by default.</p></div></body></html>`);
    });

    this.app.get("/rank/:filename", (req: Request, res: Response) => {
      const safeFilename = req.params.filename.replace(/[^a-zA-Z0-9_.-]/g, "");
      const rankPath = path.resolve(__dirname, "../../scripts/patches/assets/legend-rank", safeFilename);
      if (!fs.existsSync(rankPath) || !fs.statSync(rankPath).isFile()) {
        res.status(404).type("text/plain; charset=utf-8").send("Rank asset not found");
        return;
      }

      res.status(200).type("image/png").sendFile(rankPath);
    });

    this.app.get("/health", (_req: Request, res: Response) => {
      res.json({ ok: true, service: "profile-web" });
    });

    this.app.get("/user/:username", async (req: Request, res: Response) => {
      try {
        const username = decodeURIComponent(req.params.username);
        const user = await this.userService.findUserByUsername(username);
        if (!user) {
          res.status(404).type("text/plain; charset=utf-8").send("Player not found");
          return;
        }

        const view = buildProfileViewModel(user, this.rankService);
        res.setHeader("Content-Type", "text/html; charset=utf-8");
        res.send(getProfilePageHtml(view));
      } catch (error: any) {
        logger.error("Failed to render public profile", { error: error?.message, username: req.params.username });
        res.status(500).type("text/plain; charset=utf-8").send("Unable to load profile");
      }
    });
  }

  public start(): void {
    this.server = createServer(this.app);
    this.server.listen(this.port, () => {
      logger.info("Public profile server started", { port: this.port });
    });
  }

  public stop(): Promise<void> {
    return new Promise((resolve, reject) => {
      if (!this.server) {
        resolve();
        return;
      }

      this.server.close((error) => {
        if (error) {
          reject(error);
          return;
        }
        resolve();
      });
    });
  }
}
