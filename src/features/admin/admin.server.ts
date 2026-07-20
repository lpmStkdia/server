import { BattleService } from "@/features/battle/battle.service";
import { Battle, BattleMode, BattleRoundState, EquipmentConstraintsMode, IBattleCreationSettings, MapTheme } from "@/features/battle/battle.model";
import { GarageService } from "@/features/garage/garage.service";
import { itemBlueprints } from "@/features/garage/garage.data";
import { LobbyService } from "@/features/lobby/lobby.service";
import { GameServer } from "@/server/game.server";
import { hullsData } from "@/config/hulls.data";
import { turretsData } from "@/config/turrets.data";
import { suppliesData } from "@/config/supplies.data";
import { ChatModeratorLevel, chatModeratorLevelName, isStaffModeratorLevel, parseChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";
import User, { UserDocument } from "@/shared/models/user.model";
import { UserService } from "@/shared/services/user.service";
import logger from "@/utils/logger";
import { ChatHistory } from "@/features/chat/chat.packets";
import cors from "cors";
import crypto from "crypto";
import dotenv from "dotenv";
import express, { Request, Response } from "express";
import { Server } from "http";
import path from "path";

dotenv.config();

interface AdminSession {
  userId: string;
  username: string;
  role: ChatModeratorLevel;
  expiresAt: number;
}

// Only Community Managers can touch other staff accounts (promote/demote to
// MODERATOR/COMMUNITY_MANAGER/ADMINISTRATOR, or delete any account).
const CM_ONLY_ROLES = new Set<ChatModeratorLevel>([
  ChatModeratorLevel.MODERATOR,
  ChatModeratorLevel.COMMUNITY_MANAGER,
  ChatModeratorLevel.ADMINISTRATOR,
]);

const AUTO_RESTART_INTERVAL_MS = 24 * 60 * 60 * 1000; // 24 hours

export class AdminServer {
  private readonly app: express.Application;
  private readonly port: number;
  private readonly sessions = new Map<string, AdminSession>();
  private server: Server | null = null;
  private autoRestartTimer: NodeJS.Timeout | null = null;

  // Best-effort "online since" tracker, keyed by username. We don't have a
  // hook into the connection-established event here, so we stamp the first
  // time we *see* a client in an admin poll. If the panel is open (or polled)
  // shortly after players connect this is accurate to a few seconds; if the
  // panel hasn't been queried since a player joined, the duration will read
  // shorter than the true session length. Wire this into GameServer's own
  // "client connected" event instead, if one exists, for exact figures.
  private readonly onlineSince = new Map<string, number>();

  constructor(
    private readonly gameServer: GameServer,
    private readonly userService: UserService,
    private readonly lobbyService: LobbyService,
    private readonly battleService: BattleService,
    private readonly garageService: GarageService
  ) {
    this.app = express();
    this.port = process.env.ADMIN_PORT ? parseInt(process.env.ADMIN_PORT, 10) : 7777;
    this.setupRoutes();
  }

  private scheduleProcessRestart(delayMs = 5000): void {
    setTimeout(() => {
      // If a parent supervisor (start.js) is present it sets AUTO_RESTART_PARENT.
      // In that case a SIGTERM here will be handled by the supervisor which will
      // restart the child. Otherwise, attempt to spawn a detached replacement
      // process with the same node args and exit.
      if (process.env.AUTO_RESTART_PARENT === 'true') {
        process.kill(process.pid, 'SIGTERM');
        return;
      }

      try {
        const { spawn } = require('child_process');
        const args = process.execArgv.concat(process.argv.slice(1));
        const child = spawn(process.execPath, args, { cwd: process.cwd(), detached: true, stdio: 'inherit', env: process.env });
        child.unref();
      } catch (err) {
        logger.error('Failed to spawn replacement process during restart', { error: err });
      } finally {
        // Exit now to allow external process managers to restart, or because we've
        // spawned a detached replacement.
        process.exit(0);
      }
    }, delayMs);
  }

  private setupRoutes(): void {
    this.app.use(cors());
    this.app.use(express.json());

    this.app.get("/", (_req: Request, res: Response) => {
      res.sendFile(path.resolve(process.cwd(), "webpanel/admin.html"));
    });

    this.app.get("/health", (_req: Request, res: Response) => {
      res.json({ ok: true });
    });

    const auth = async (req: Request, res: Response, next: () => void): Promise<void> => {
      const token = typeof req.header("x-admin-token") === "string"
        ? req.header("x-admin-token")
        : typeof req.query.token === "string"
          ? req.query.token
          : undefined;
      if (!token) {
        res.status(401).json({ error: "missing admin token" });
        return;
      }
      const session = this.sessions.get(token);
      if (!session || session.expiresAt < Date.now()) {
        this.sessions.delete(token);
        res.status(401).json({ error: "invalid or expired admin session" });
        return;
      }
      res.locals.session = session;
      next();
    };

    // Community-Manager-only gate, for staff/account management actions.
    const requireCommunityManager = (req: Request, res: Response, next: () => void): void => {
      const session = res.locals.session as AdminSession;
      if (session.role !== ChatModeratorLevel.COMMUNITY_MANAGER) {
        res.status(403).json({ error: "requires community manager" });
        return;
      }
      next();
    };

    this.app.post("/api/admin/login", async (req: Request, res: Response) => {
      try {
        const username = typeof req.body?.username === "string" ? req.body.username.trim() : "";
        const password = typeof req.body?.password === "string" ? req.body.password : "";

        if (!username || !password) {
          res.status(400).json({ error: "username and password are required" });
          return;
        }

        const user = await this.userService.findUserByUsername(username);
        if (!user) {
          res.status(401).json({ error: "invalid credentials" });
          return;
        }

        const isMatch = await new Promise<boolean>((resolve, reject) => {
          user.verifyPassword(password, (err, matched) => {
            if (err) return reject(err);
            resolve(Boolean(matched));
          });
        });

        if (!isMatch) {
          res.status(401).json({ error: "invalid credentials" });
          return;
        }

        // Must be a registered account AND hold HELPER/MODERATOR/COMMUNITY_MANAGER/ADMINISTRATOR.
        if (!isStaffModeratorLevel(user.chatModeratorLevel)) {
          res.status(403).json({ error: "account does not have staff privileges" });
          return;
        }

        const token = crypto.randomBytes(16).toString("hex");
        this.sessions.set(token, {
          userId: user.id,
          username: user.username,
          role: user.chatModeratorLevel,
          expiresAt: Date.now() + 8 * 60 * 60 * 1000,
        });

        res.json({
          token,
          user: {
            id: user.id,
            username: user.username,
            role: user.chatModeratorLevel,
            roleName: chatModeratorLevelName(user.chatModeratorLevel),
          },
        });
      } catch (error) {
        logger.error("Admin login failed", { error });
        res.status(500).json({ error: "admin login failed" });
      }
    });

    this.app.get("/api/admin/me", auth, (req: Request, res: Response) => {
      const session = res.locals.session as AdminSession;
      res.json({
        userId: session.userId,
        username: session.username,
        role: session.role,
        roleName: chatModeratorLevelName(session.role),
      });
    });

    this.app.post("/api/admin/logout", auth, (req: Request, res: Response) => {
      const session = res.locals.session as AdminSession;
      for (const [token, entry] of this.sessions.entries()) {
        if (entry.userId === session.userId) {
          this.sessions.delete(token);
        }
      }
      res.json({ ok: true });
    });

    this.app.get("/api/admin/overview", auth, async (_req: Request, res: Response) => {
      const clients = this.gameServer.getClients().filter((client) => client.user);
      this.pruneOnlineSince(clients.map((c) => c.user!.username));
      const onlineUsers = clients.map((client) => this.summarizeOnlineUser(client));
      const battles = this.lobbyService.getBattles().map((battle) => ({
        battleId: battle.battleId,
        name: battle.settings.name,
        mode: battle.settings.battleMode,
        modeName: BattleMode[battle.settings.battleMode],
        players: battle.getAllParticipants().length,
        private: battle.settings.privateBattle,
        creator: battle.creatorUsername ?? null,
      }));

      res.json({
        onlineCount: onlineUsers.length,
        battleCount: battles.length,
        battles,
        onlineUsers,
      });
    });

    // List all registered accounts (paginated by ?limit&offset, optional ?query prefix search)
    // Shows the IP each account registered from, per request.
    this.app.get("/api/admin/users", auth, async (req: Request, res: Response) => {
      try {
        const limit = Math.min(200, Number(req.query.limit ?? 100));
        const offset = Number(req.query.offset ?? 0);
        const query = typeof req.query.query === "string" ? req.query.query.trim() : "";
        const filter: any = {};
        if (query) {
          const escaped = query.replace(/[-/\\^$*+?.()|[\]{}]/g, "\\$&");
          filter.username = { $regex: `^${escaped}`, $options: "i" };
        }
        const users = await User.find(filter)
          .sort({ createdAt: -1 })
          .skip(offset)
          .limit(limit)
          .lean();
        const data = users.map((user: any) => ({
          id: user._id ?? user.id,
          username: user.username,
          registeredIp: user.registeredIp ?? null,
          roleName: chatModeratorLevelName(user.chatModeratorLevel),
          chatModeratorLevel: user.chatModeratorLevel,
          crystals: user.crystals,
          experience: user.experience,
          rank: user.rank,
          isPunished: user.isPunished,
          premiumExpiresAt: user.premiumExpiresAt ?? null,
          createdAt: user.createdAt ?? null,
          lastLogin: user.lastLogin ?? null,
          online: !!this.gameServer.findClientByUsername(user.username),
        }));
        res.json({ users: data, total: await User.countDocuments(filter) });
      } catch (error) {
        logger.error("Failed listing users", { error });
        res.status(500).json({ error: "failed to list users" });
      }
    });

    this.app.get("/api/admin/players", auth, async (req: Request, res: Response) => {
      try {
        const query = typeof req.query.query === "string" ? req.query.query.trim() : "";
        const limit = Math.min(200, Math.max(1, Number(req.query.limit ?? 50)));
        const filter: any = {};
        if (query) {
          const escaped = query.replace(/[-/\\^$*+?.()|[\]{}]/g, "\\$&");
          filter.login = { $regex: `^${escaped}`, $options: "i" };
        }
        const users = await User.find(filter).sort({ login: 1 }).limit(limit).lean();
        const data = users.map((user: any) => ({
          username: user.username,
          roleName: chatModeratorLevelName(user.chatModeratorLevel),
          rank: user.rank,
          crystals: user.crystals,
          online: !!this.gameServer.findClientByUsername(user.username),
        }));
        res.json(data);
      } catch (error) {
        logger.error("Failed searching players", { error });
        res.status(500).json({ error: "failed to search players" });
      }
    });

    this.app.get("/api/admin/players/:username", auth, async (req: Request, res: Response) => {
      try {
        const user = await this.userService.findUserByUsername(req.params.username);
        if (!user) {
          res.status(404).json({ error: "player not found" });
          return;
        }
        const client = this.gameServer.findClientByUsername(user.username);
        const onlineStats = client ? {
          battleId: client.currentBattle?.battleId ?? null,
          battleName: client.currentBattle?.settings.name ?? null,
          kills: client.kills,
          deaths: client.deaths,
          battleScore: client.battleScore,
          position: client.battlePosition,
          team: client.currentBattle ? client.currentBattle.teamOf(user) : null,
          battleStatus: client.currentBattle ? BattleRoundState[client.currentBattle.roundState] : null,
          ip: (client as any).socket?.remoteAddress ?? null,
          onlineSinceMs: this.onlineSince.get(user.username) ?? null,
          onlineDurationMs: this.onlineSince.has(user.username) ? Date.now() - this.onlineSince.get(user.username)! : null,
        } : null;
        res.json({ ...this.summarizeUser(user), online: !!client, onlineStats });
      } catch (error) {
        logger.error("Failed getting player details", { error });
        res.status(500).json({ error: "failed to load player" });
      }
    });

    this.app.get("/api/admin/item-catalog", auth, (_req: Request, res: Response) => {
      try {
        res.json({
          hulls: hullsData.map((h) => ({ id: h.id, name: h.name, category: h.category, modCount: h.mods.length })),
          turrets: turretsData.map((t) => ({ id: t.id, name: t.name, category: t.category, modCount: t.mods.length })),
          paints: itemBlueprints.paints.map((p) => ({ id: p.id, name: p.name, category: p.category })),
          supplies: suppliesData.map((s) => ({ id: s.id, slotId: s.slotId, itemEffectTime: s.itemEffectTime, itemRestSec: s.itemRestSec })),
        });
      } catch (error) {
        logger.error("Failed loading item catalog", { error });
        res.status(500).json({ error: "failed to load item catalog" });
      }
    });

    // Ban / punish an account (hours) — works whether or not the target is online.
    this.app.post("/api/admin/accounts/:username/ban", auth, async (req: Request, res: Response) => {
      try {
        const hours = Number(req.body?.hours ?? 24);
        const reason = typeof req.body?.reason === "string" ? req.body.reason : "Staff action";
        const durationMs = Number.isFinite(hours) ? hours * 3600 * 1000 : 24 * 3600 * 1000;
        const user = await this.userService.punishUser(req.params.username, durationMs, reason);
        const client = this.gameServer.findClientByUsername(req.params.username);
        if (client) client.closeConnection();
        res.json(this.summarizeUser(user));
      } catch (error) {
        logger.error("Ban failed", { error });
        res.status(500).json({ error: "ban failed" });
      }
    });

    // Unban
    this.app.post("/api/admin/accounts/:username/unban", auth, async (req: Request, res: Response) => {
      try {
        const u = await this.userService.findUserByUsername(req.params.username);
        if (!u) { res.status(404).json({ error: "not found" }); return; }
        u.isPunished = false;
        u.punishmentExpiresAt = null;
        u.punishmentReason = null;
        await u.save();
        res.json(this.summarizeUser(u));
      } catch (error) {
        logger.error("Unban failed", { error });
        res.status(500).json({ error: "unban failed" });
      }
    });

    // Mute / Unmute
    this.app.post("/api/admin/accounts/:username/mute", auth, async (req: Request, res: Response) => {
      try {
        const minutes = Number(req.body?.minutes ?? 60);
        const reason = typeof req.body?.reason === "string" ? req.body.reason.trim() : null;
        const user = await this.userService.findUserByUsername(req.params.username);
        if (!user) { res.status(404).json({ error: "not found" }); return; }
        user.mutedUntil = new Date(Date.now() + Math.max(0, minutes) * 60000);
        user.mutedReason = reason;
        await user.save();

        // If online, notify immediately (mirrors /premium command behaviour).
        const online = this.gameServer.findClientByUsername(user.username);
        if (online?.user) {
          await (await import("@/utils/item.utils")).ItemUtils.reconcilePremiumEquipment(user);
          const ProfilePackets = require("@/features/profile/profile.packets");
          online.user = user;
          const secondsLeft = (await import("@/shared/models/passes")).secondsLeft;
          online.sendPacket(new ProfilePackets.UpdatePremiumTimePacket({ timeLeft: secondsLeft(user.premiumExpiresAt) }));
          // Notify the user directly about the mute (private, green-style message)
          try {
            const minutesLeft = Math.ceil((user.mutedUntil!.getTime() - Date.now()) / 60000);
            const msg = `You are muted for ${minutesLeft} more minute(s).${reason ? ' Reason: ' + reason : ''}`;
            online.sendPacket(new ChatHistory({ messages: [{ message: msg, isSystem: true, isWarning: false, source: null, target: null }] }));
          } catch (err) {
            logger.warn("Failed sending mute notification", { error: err });
          }
        }
        res.json(this.summarizeUser(user));
      } catch (error) {
        logger.error("Mute failed", { error });
        res.status(500).json({ error: "mute failed" });
      }
    });

    this.app.post("/api/admin/accounts/:username/unmute", auth, async (req: Request, res: Response) => {
      try {
        const user = await this.userService.findUserByUsername(req.params.username);
        if (!user) { res.status(404).json({ error: "not found" }); return; }
        user.mutedUntil = null;
        user.mutedReason = null;
        await user.save();
        const online = this.gameServer.findClientByUsername(user.username);
        if (online?.user) {
          try {
            online.user = user;
            online.sendPacket(new ChatHistory({ messages: [{ message: `You have been unmuted.`, isSystem: true, isWarning: false, source: null, target: null }] }));
          } catch (err) {
            logger.warn("Failed sending unmute notification", { error: err });
          }
        }
        res.json(this.summarizeUser(user));
      } catch (error) {
        logger.error("Unmute failed", { error });
        res.status(500).json({ error: "unmute failed" });
      }
    });

    // Grant / adjust premium — works offline too.
    this.app.post("/api/admin/accounts/:username/premium", auth, async (req: Request, res: Response) => {
      try {
        const user = await this.userService.findUserByUsername(req.params.username);
        if (!user) { res.status(404).json({ error: "not found" }); return; }

        if (req.body?.clear) {
          user.premiumExpiresAt = null;
        } else if (req.body?.setExpiresAt) {
          const date = new Date(req.body.setExpiresAt);
          if (isNaN(date.getTime())) { res.status(400).json({ error: "invalid setExpiresAt" }); return; }
          user.premiumExpiresAt = date;
        } else {
          const days = Number(req.body?.days ?? 0);
          if (!Number.isFinite(days) || days === 0) { res.status(400).json({ error: "days, setExpiresAt, or clear required" }); return; }
          const base = user.premiumExpiresAt && user.premiumExpiresAt.getTime() > Date.now() ? user.premiumExpiresAt.getTime() : Date.now();
          user.premiumExpiresAt = new Date(base + days * 24 * 60 * 60 * 1000);
        }
        await user.save();

        const client = this.gameServer.findClientByUsername(user.username);
        if (client && client.user) {
          client.user = user;
          const ProfilePackets = require("@/features/profile/profile.packets");
          const { secondsLeft } = await import("@/shared/models/passes");
          client.sendPacket(new ProfilePackets.UpdatePremiumTimePacket({ timeLeft: secondsLeft(user.premiumExpiresAt) }));
        }

        res.json(this.summarizeUser(user));
      } catch (error) {
        logger.error("Premium update failed", { error });
        res.status(500).json({ error: "premium update failed" });
      }
    });

    // Kick player from game (close connection)
    this.app.post("/api/admin/players/:username/kick", auth, (req: Request, res: Response) => {
      const client = this.gameServer.findClientByUsername(req.params.username);
      if (!client) { res.status(404).json({ error: "player not online" }); return; }
      client.closeConnection();
      this.onlineSince.delete(req.params.username);
      res.json({ ok: true });
    });

    // Kick player from battle (destroy tank / remove from battle) without requiring a battle ID.
    this.app.post("/api/admin/players/:username/kick-battle", auth, async (req: Request, res: Response) => {
      const client = this.gameServer.findClientByUsername(req.params.username);
      if (!client || !client.user) {
        try {
          const removed = await this.battleService.kickOfflineFromBattle(req.params.username);
          if (removed) { res.json({ ok: true, battleId: removed }); return; }
          res.status(404).json({ error: "player not online or not in a battle" });
          return;
        } catch (err) {
          res.status(500).json({ error: "kick failed" });
          return;
        }
      }

      const battle = client.currentBattle;
      if (!battle) {
        res.status(404).json({ error: "player is not currently in a battle" });
        return;
      }

      const isSpectator = client.isSpectator;
      if (!isSpectator) {
        this.battleService.announceTankRemoval(client.user, battle, client.battlePosition);
      }
      await this.battleService.finalizeBattleExit(client.user, battle, client.friendsCache, isSpectator);
      const UnloadSpaceBattlePacket = require("@/features/battle/battle-init.packets").UnloadSpaceBattlePacket;
      client.sendPacket(new UnloadSpaceBattlePacket());
      client.currentBattle = null;
      client.isSpectator = false;
      client.battleState = "suicide";
      client.stopTimeChecker();
      await (await import("@/features/lobby/lobby.workflow")).LobbyWorkflow.returnToLobby(client, this.gameServer, false);

      res.json({ ok: true, battleId: battle.battleId });
    });

    // Kick player from battle (destroy tank / remove from battle)
    this.app.post("/api/admin/battles/:battleId/players/:username/kick", auth, async (req: Request, res: Response) => {
      // Allows kicking by specifying a battleId OR by just providing username — auto-detects current battle.
      const client = this.gameServer.findClientByUsername(req.params.username);
      if (!client || !client.user) {
        try {
          const removed = await this.battleService.kickOfflineFromBattle(req.params.username);
          if (removed) { res.json({ ok: true, battleId: removed }); return; }
          res.status(404).json({ error: "player not online or not in a battle" });
          return;
        } catch (err) {
          res.status(500).json({ error: "kick failed" });
          return;
        }
      }

      const battle = client.currentBattle;
      if (!battle) {
        res.status(404).json({ error: "player is not currently in a battle" });
        return;
      }

      const isSpectator = client.isSpectator;
      if (!isSpectator) {
        this.battleService.announceTankRemoval(client.user, battle, client.battlePosition);
      }
      await this.battleService.finalizeBattleExit(client.user, battle, client.friendsCache, isSpectator);
      const UnloadSpaceBattlePacket = require("@/features/battle/battle-init.packets").UnloadSpaceBattlePacket;
      client.sendPacket(new UnloadSpaceBattlePacket());
      client.currentBattle = null;
      client.isSpectator = false;
      client.battleState = "suicide";
      client.stopTimeChecker();
      await (await import("@/features/lobby/lobby.workflow")).LobbyWorkflow.returnToLobby(client, this.gameServer, false);

      res.json({ ok: true, battleId: battle.battleId });
    });

    this.app.post("/api/admin/players/:username/destroy", auth, (req: Request, res: Response) => {
      const client = this.gameServer.findClientByUsername(req.params.username);
      if (!client || !client.user || !client.currentBattle) {
        res.status(404).json({ error: "player not in a battle" });
        return;
      }
      const destroyed = this.battleService.forceDestroyTank(client);
      res.json({ destroyed });
    });

    // Kill (destroy tank of) a specific player without kicking them
    this.app.post("/api/admin/battles/:battleId/players/:username/destroy", auth, (req: Request, res: Response) => {
      // Destroy target's tank if they're in a battle. Auto-detects the player's current battle.
      const client = this.gameServer.findClientByUsername(req.params.username);
      if (!client || !client.user || !client.currentBattle) { res.status(404).json({ error: "player not in a battle" }); return; }
      const destroyed = this.battleService.forceDestroyTank(client);
      res.json({ destroyed });
    });

    this.app.post("/api/admin/battles/create", auth, (req: Request, res: Response) => {
      try {
        const session = res.locals.session as AdminSession;
        if (session.role !== ChatModeratorLevel.ADMINISTRATOR && session.role !== ChatModeratorLevel.COMMUNITY_MANAGER) {
          res.status(403).json({ error: "requires administrator" });
          return;
        }

        const settings = {
          name: typeof req.body?.name === "string" && req.body.name.trim() ? req.body.name.trim() : "Nova batalha",
          privateBattle: Boolean(req.body?.privateBattle),
          proBattle: Boolean(req.body?.proBattle),
          battleMode: Number(req.body?.battleMode ?? BattleMode.TDM),
          mapId: typeof req.body?.mapId === "string" && req.body.mapId ? req.body.mapId : "map_sandbox",
          maxPeopleCount: Math.max(2, Math.min(60, Number(req.body?.maxPeopleCount ?? 16))),
          minRank: Math.max(1, Math.min(100, Number(req.body?.minRank ?? 1))),
          maxRank: Math.max(1, Math.min(100, Number(req.body?.maxRank ?? 30))),
          timeLimitInSec: Math.max(30, Number(req.body?.timeLimitInSec ?? 600)),
          scoreLimit: Math.max(1, Number(req.body?.scoreLimit ?? 20)),
          autoBalance: Boolean(req.body?.autoBalance),
          friendlyFire: Boolean(req.body?.friendlyFire),
          parkourMode: Boolean(req.body?.parkourMode),
          equipmentConstraintsMode: EquipmentConstraintsMode.NONE,
          reArmorEnabled: true,
          mapTheme: typeof req.body?.mapTheme === "string" ? (req.body.mapTheme === "SPACE" ? MapTheme.SPACE : MapTheme.SUMMER) : MapTheme.SPACE,
          withoutBonuses: Boolean(req.body?.withoutBonuses),
          withoutCrystals: Boolean(req.body?.withoutCrystals),
          withoutSupplies: Boolean(req.body?.withoutSupplies),
          withoutUpgrades: Boolean(req.body?.withoutUpgrades),
          reducedResistances: Boolean(req.body?.reducedResistances),
          esportDropTiming: Boolean(req.body?.esportDropTiming),
          withoutGoldBoxes: Boolean(req.body?.withoutGoldBoxes),
          withoutGoldSiren: Boolean(req.body?.withoutGoldSiren),
          withoutGoldZone: Boolean(req.body?.withoutGoldZone),
          withoutMedkit: Boolean(req.body?.withoutMedkit),
          withoutMines: Boolean(req.body?.withoutMines),
          randomGold: Boolean(req.body?.randomGold),
          dependentCooldownEnabled: Boolean(req.body?.dependentCooldownEnabled),
        } as IBattleCreationSettings;

        const battle = this.lobbyService.createBattle(settings, undefined);
        res.json({ battleId: battle.battleId, name: battle.settings.name });
      } catch (error: any) {
        logger.error("Admin battle creation failed", { error });
        res.status(400).json({ error: error.message || "failed to create battle" });
      }
    });

    this.app.post("/api/admin/battles/:battleId/fund", auth, (req: Request, res: Response) => {
      const battle = this.lobbyService.getBattleById(req.params.battleId);
      if (!battle) { res.status(404).json({ error: "battle not found" }); return; }
      const session = res.locals.session as AdminSession;
      if (session.role !== ChatModeratorLevel.ADMINISTRATOR && session.role !== ChatModeratorLevel.COMMUNITY_MANAGER) {
        res.status(403).json({ error: "requires administrator" });
        return;
      }
      const value = Number(req.body?.value ?? req.body?.fund ?? 0);
      if (!Number.isFinite(value) || value < 0) {
        res.status(400).json({ error: "invalid fund value" });
        return;
      }
      battle.fund = value;
      battle.broadcast(new (require("@/features/battle/battle.packets")).ChangeFundPacket(value));
      res.json({ fund: battle.fund });
    });

    // Broadcast to lobby
    this.app.post("/api/admin/broadcast", auth, (req: Request, res: Response) => {
      const text = String(req.body?.text ?? "");
      if (!text) { res.status(400).json({ error: "empty message" }); return; }
      const ChatPackets = require("@/features/chat/chat.packets");
      // Lobby: send as a system chat history entry so lobby/garage listeners show it.
      this.gameServer.broadcastToLobbyChat(new ChatPackets.ChatHistory({ messages: [{ message: text, isSystem: true, isWarning: true, source: null, target: null }] }));

      // Battles: send BattleSystemMessagePacket to everyone currently in a battle.
      const BattlePackets = require("@/features/battle/battle.packets");
      for (const client of this.gameServer.getClients()) {
        if (client.user && client.currentBattle) {
          client.sendPacket(new BattlePackets.BattleSystemMessagePacket({ message: text }));
        }
      }

      res.json({ ok: true });
    });

    // Broadcast to a single battle only
    this.app.post("/api/admin/battles/:battleId/broadcast", auth, (req: Request, res: Response) => {
      const battle = this.lobbyService.getBattleById(req.params.battleId);
      if (!battle) { res.status(404).json({ error: "battle not found" }); return; }
      const text = String(req.body?.text ?? "");
      if (!text) { res.status(400).json({ error: "empty message" }); return; }
      const BattlePackets = require("@/features/battle/battle.packets");
      battle.broadcast(new BattlePackets.BattleSystemMessagePacket({ message: text }));
      res.json({ ok: true });
    });

    // Restart server (graceful) — admin/CM only. Works whether this process is
    // supervised by `start.js` or running standalone: it will either SIGTERM the
    // child (supervised) or spawn a detached replacement and exit.
    this.app.post("/api/admin/restart", auth, (req: Request, res: Response) => {
      const session = res.locals.session as AdminSession;
      if (session.role !== ChatModeratorLevel.ADMINISTRATOR && session.role !== ChatModeratorLevel.COMMUNITY_MANAGER) {
        res.status(403).json({ error: "requires administrator" });
        return;
      }
      res.json({ ok: true, reason: "server restarting" });
      // give clients 5s then restart in a robust way
      this.scheduleProcessRestart(5000);
    });

    // Battle details: participants, mines, etc.
    this.app.get("/api/admin/battles/:battleId/details", auth, (req: Request, res: Response) => {
      const battle = this.lobbyService.getBattleById(req.params.battleId);
      if (!battle) { res.status(404).json({ error: "battle not found" }); return; }
      const allParticipants = battle.getAllParticipants();
      const mines = Array.from(battle.activeMines.values());
      const bonuses = Array.from(battle.activeBonuses.values());
      const domPoints = battle.domPoints.map((point) => ({
        id: point.id,
        name: point.name,
        position: point.position,
        radius: point.radius,
        state: point.state,
        score: point.score,
        tanksOnPoint: point.tanksOnPoint.map((u) => u.username),
      }));
      const participants = {
        red: battle.usersRed.map((u) => ({ username: u.username, id: u.id })),
        blue: battle.usersBlue.map((u) => ({ username: u.username, id: u.id })),
        neutral: battle.users.map((u) => ({ username: u.username, id: u.id })),
        spectators: battle.spectators.map((u) => ({ username: u.username, id: u.id })),
      };
      const mineOwners: Record<string, number> = {};
      let redMineCount = 0;
      let blueMineCount = 0;
      for (const mine of mines) {
        mineOwners[mine.owner] = (mineOwners[mine.owner] || 0) + 1;
        if (mine.ownerTeam === 0) redMineCount++;
        else if (mine.ownerTeam === 1) blueMineCount++;
      }
      res.json({
        battleId: battle.battleId,
        name: battle.settings.name,
        creator: battle.creatorUsername,
        private: battle.settings.privateBattle,
        roundState: battle.roundState,
        roundStateName: BattleRoundState[battle.roundState],
        mode: battle.settings.battleMode,
        modeName: BattleMode[battle.settings.battleMode],
        mapId: battle.settings.mapId,
        maxPlayers: battle.settings.maxPeopleCount,
        minRank: battle.settings.minRank,
        maxRank: battle.settings.maxRank,
        timeLimitInSec: battle.settings.timeLimitInSec,
        scoreLimit: battle.settings.scoreLimit,
        autoBalance: battle.settings.autoBalance,
        friendlyFire: battle.settings.friendlyFire,
        parkourMode: battle.settings.parkourMode,
        withoutBonuses: battle.settings.withoutBonuses,
        withoutCrystals: battle.settings.withoutCrystals,
        withoutSupplies: battle.settings.withoutSupplies,
        withoutUpgrades: battle.settings.withoutUpgrades,
        reducedResistances: battle.settings.reducedResistances,
        esportDropTiming: battle.settings.esportDropTiming,
        withoutGoldBoxes: battle.settings.withoutGoldBoxes,
        withoutGoldSiren: battle.settings.withoutGoldSiren,
        withoutGoldZone: battle.settings.withoutGoldZone,
        withoutMedkit: battle.settings.withoutMedkit,
        withoutMines: battle.settings.withoutMines,
        randomGold: battle.settings.randomGold,
        dependentCooldownEnabled: battle.settings.dependentCooldownEnabled,
        boundsDisabled: battle.boundsDisabled,
        paused: battle.paused,
        scoreBlue: battle.scoreBlue,
        scoreRed: battle.scoreRed,
        fund: battle.fund,
        players: allParticipants.length,
        spectators: battle.spectators.length,
        redCount: battle.usersRed.length,
        blueCount: battle.usersBlue.length,
        neutralCount: battle.users.length,
        participants,
        activeMines: mines,
        activeMineCount: mines.length,
        redMineCount,
        blueMineCount,
        activeBonusCount: bonuses.length,
        activeBonuses: bonuses,
        domPoints,
        mineOwners,
        flagCarrierBlue: battle.flagCarrierBlue?.username ?? null,
        flagCarrierRed: battle.flagCarrierRed?.username ?? null,
        flagBasePositionBlue: battle.flagBasePositionBlue,
        flagBasePositionRed: battle.flagBasePositionRed,
        flagPositionBlue: battle.flagPositionBlue,
        flagPositionRed: battle.flagPositionRed,
      });
    });

    // Remove mines filter: owner/team/all
    this.app.post("/api/admin/battles/:battleId/remove-mines", auth, (req: Request, res: Response) => {
      const battle = this.lobbyService.getBattleById(req.params.battleId);
      if (!battle) { res.status(404).json({ error: "battle not found" }); return; }
      const owner = typeof req.body?.owner === "string" ? req.body.owner : null;
      const team = typeof req.body?.team === "string" ? req.body.team : null; // 'red'|'blue'|null

      const ownersToRemove = new Set<string>();
      for (const mine of battle.activeMines.values()) {
        if (owner && mine.owner !== owner) continue;
        if (team) {
          if (team === "red" && mine.ownerTeam !== 0) continue;
          if (team === "blue" && mine.ownerTeam !== 1) continue;
        }
        ownersToRemove.add(mine.owner);
      }

      let removed = 0;
      for (const ownerName of ownersToRemove) {
        removed += this.battleService.mine.removeMinesOf(battle, ownerName);
      }

      res.json({ removed });
    });


    this.app.get("/api/admin/online-users", auth, (_req: Request, res: Response) => {
      const clients = this.gameServer.getClients().filter((client) => client.user);
      this.pruneOnlineSince(clients.map((c) => c.user!.username));
      const users = clients.map((client) => this.summarizeOnlineUser(client));
      res.json(users);
    });

    this.app.get("/api/admin/battles", auth, (_req: Request, res: Response) => {
      const battles = this.lobbyService.getBattles().map((battle) => ({
        battleId: battle.battleId,
        name: battle.settings.name,
        mode: battle.settings.battleMode,
        modeName: BattleMode[battle.settings.battleMode],
        players: battle.getAllParticipants().length,
        spectators: battle.spectators.length,
        private: battle.settings.privateBattle,
        creator: battle.creatorUsername ?? null,
        roundState: battle.roundState,
        roundStateName: BattleRoundState[battle.roundState],
        scoreBlue: battle.scoreBlue,
        scoreRed: battle.scoreRed,
        fund: battle.fund,
        mapId: battle.settings.mapId,
      }));
      res.json(battles);
    });

    this.app.get("/api/admin/accounts/:username", auth, async (req: Request, res: Response) => {
      try {
        const user = await this.userService.findUserByUsername(req.params.username);
        if (!user) {
          res.status(404).json({ error: "account not found" });
          return;
        }
        res.json(this.summarizeUser(user));
      } catch (error) {
        logger.error("Admin account lookup failed", { error });
        res.status(500).json({ error: "account lookup failed" });
      }
    });

    // Role changes: anyone with staff panel access can promote/demote to
    // HELPER. Touching MODERATOR/COMMUNITY_MANAGER/ADMINISTRATOR (in either
    // direction) is Community-Manager-only, per the "manage other mods/admins" requirement.
    this.app.post("/api/admin/accounts/:username/role", auth, async (req: Request, res: Response) => {
      try {
        const session = res.locals.session as AdminSession;
        const parsed = parseChatModeratorLevel(typeof req.body?.role === "string" ? req.body.role : "");
        if (parsed === null) {
          res.status(400).json({ error: "invalid role" });
          return;
        }

        const target = await this.userService.findUserByUsername(req.params.username);
        if (!target) { res.status(404).json({ error: "account not found" }); return; }

        const touchesStaffRole = CM_ONLY_ROLES.has(parsed) || CM_ONLY_ROLES.has(target.chatModeratorLevel);
        if (touchesStaffRole && session.role !== ChatModeratorLevel.COMMUNITY_MANAGER) {
          res.status(403).json({ error: "only a community manager can manage moderator/admin/CM roles" });
          return;
        }

        const user = await this.userService.setChatModeratorLevel(req.params.username, parsed);

        const client = this.gameServer.findClientByUsername(user.username);
        if (client && client.user) {
          client.user = user;
          const ChatPackets = require("@/features/chat/chat.packets");
          client.sendPacket(new ChatPackets.ChatHistory({ messages: [{ message: `Your staff role was updated to ${chatModeratorLevelName(user.chatModeratorLevel)}.`, isSystem: true, isWarning: true, source: null, target: null }] }));
        }

        res.json(this.summarizeUser(user));
      } catch (error) {
        logger.error("Admin role update failed", { error });
        res.status(500).json({ error: "role update failed" });
      }
    });

    this.app.post("/api/admin/accounts/:username/punish", auth, async (req: Request, res: Response) => {
      try {
        const durationMinutes = Number(req.body?.durationMinutes ?? req.body?.durationMs ?? 60);
        const reason = typeof req.body?.reason === "string" ? req.body.reason : "Staff action";
        const durationMs = Number.isFinite(durationMinutes) ? durationMinutes * 60 * 1000 : 60 * 60 * 1000;
        const user = await this.userService.punishUser(req.params.username, durationMs, reason);
        res.json(this.summarizeUser(user));
      } catch (error) {
        logger.error("Admin punish failed", { error });
        res.status(500).json({ error: "punishment failed" });
      }
    });

    // Works whether the target is online or offline.
    this.app.post("/api/admin/accounts/:username/resources", auth, async (req: Request, res: Response) => {
      try {
        const targetUser = await this.userService.findUserByUsername(req.params.username);
        if (!targetUser) {
          res.status(404).json({ error: "account not found" });
          return;
        }
        const updates: { crystals?: number; experience?: number } = {};
        if (req.body?.crystals !== undefined) updates.crystals = Number(req.body.crystals);
        if (req.body?.experience !== undefined) updates.experience = Number(req.body.experience);
        const user = await this.userService.updateResources(targetUser.id, updates);

        // If the target is online, apply live updates mirroring chat command behaviour.
        const client = this.gameServer.findClientByUsername(user.username);
        if (client && client.user) {
          const ProfilePackets = require("@/features/profile/profile.packets");
          client.user = user;
          if (updates.crystals !== undefined) client.sendPacket(new ProfilePackets.UpdateCrystals({ crystals: user.crystals }));
          if (updates.experience !== undefined) {
            client.sendPacket(new ProfilePackets.UpdateScorePacket({ score: user.experience }));
            const rankInfo = this.gameServer.rankService.getRankById(user.rank);
            client.sendPacket(new ProfilePackets.UpdateRankPacket({ rank: user.rank, score: user.experience, currentRankScore: rankInfo?.minScore ?? 0, nextRankScore: user.nextRankScore, reward: 0 }));
          }
        }

        res.json(this.summarizeUser(user));
      } catch (error) {
        logger.error("Admin resources update failed", { error });
        res.status(500).json({ error: "resource update failed" });
      }
    });

    this.app.get("/api/admin/accounts/:username/garage", auth, async (req: Request, res: Response) => {
      try {
        const user = await this.userService.findUserByUsername(req.params.username);
        if (!user) {
          res.status(404).json({ error: "account not found" });
          return;
        }

        const inventory: Record<string, unknown> = {};
        for (const [itemId, mod] of user.hulls.entries()) inventory[itemId] = mod;
        for (const [itemId, mod] of user.turrets.entries()) inventory[itemId] = mod;
        inventory.paints = user.paints;
        inventory.supplies = user.supplies;
        inventory.premiumExpiresAt = user.premiumExpiresAt;
        inventory.rank = user.rank;
        inventory.chatModeratorLevel = user.chatModeratorLevel;

        const data = this.garageService.buildGarageData(inventory as any);
        res.json({
          username: user.username,
          garageItems: data.garageItems,
          shopItems: data.shopItems,
          hulls: Object.fromEntries(user.hulls.entries()),
          turrets: Object.fromEntries(user.turrets.entries()),
          paints: user.paints,
          supplies: Object.fromEntries(user.supplies.entries()),
          equippedHull: user.equippedHull,
          equippedTurret: user.equippedTurret,
          equippedPaint: user.equippedPaint,
        });
      } catch (error) {
        logger.error("Admin garage lookup failed", { error });
        res.status(500).json({ error: "garage lookup failed" });
      }
    });

    this.app.post("/api/admin/battles/:battleId/finish", auth, (req: Request, res: Response) => {
      const battle = this.lobbyService.getBattleById(req.params.battleId);
      if (!battle) {
        res.status(404).json({ error: "battle not found" });
        return;
      }
      const finished = this.battleService.finishBattle(battle);
      res.json({ ok: finished });
    });

    this.app.post("/api/admin/battles/:battleId/restart", auth, (req: Request, res: Response) => {
      const battle = this.lobbyService.getBattleById(req.params.battleId);
      if (!battle) {
        res.status(404).json({ error: "battle not found" });
        return;
      }
      this.battleService.restartBattle(battle);
      res.json({ ok: true });
    });

    // Terminate a battle outright (finish + remove from lobby), distinct from a scored "finish".
    this.app.post("/api/admin/battles/:battleId/terminate", auth, (req: Request, res: Response) => {
      const battle = this.lobbyService.getBattleById(req.params.battleId);
      if (!battle) {
        res.status(404).json({ error: "battle not found" });
        return;
      }
      this.battleService.finishBattle(battle);
      this.lobbyService.removeBattle(battle.battleId);
      res.json({ ok: true });
    });

    this.app.post("/api/admin/battles/:battleId/drop-flags", auth, (req: Request, res: Response) => {
      const battle = this.lobbyService.getBattleById(req.params.battleId);
      if (!battle) {
        res.status(404).json({ error: "battle not found" });
        return;
      }
      const dropped = this.battleService.dropCarriedFlags(battle);
      res.json({ dropped });
    });

    // Create account
    this.app.post("/api/admin/accounts/create", auth, async (req: Request, res: Response) => {
      try {
        const { username, password, email, crystals, experience } = req.body || {};
        if (!username || !password) { res.status(400).json({ error: "username & password required" }); return; }
        const user = await this.userService.createUser({ username, password, email: email ?? null, crystals: Number(crystals) || 0, experience: Number(experience) || 0, registeredIp: null });
        res.json(this.summarizeUser(user));
      } catch (error) {
        logger.error("Admin create account failed", { error });
        res.status(500).json({ error: "create failed" });
      }
    });

    // Delete account — Community-Manager-only, per requirements.
    this.app.delete("/api/admin/accounts/:username", auth, requireCommunityManager, async (req: Request, res: Response) => {
      try {
        await this.userService.deleteUser(req.params.username);
        // disconnect if online
        const client = this.gameServer.findClientByUsername(req.params.username);
        if (client) client.closeConnection();
        res.json({ ok: true });
      } catch (error) {
        logger.error("Admin delete account failed", { error });
        res.status(500).json({ error: "delete failed" });
      }
    });

    // Garage: add item (paint/hull/turret/supply) — works offline.
    this.app.post("/api/admin/accounts/:username/garage/add", auth, async (req: Request, res: Response) => {
      try {
        const { type, id, modification, count } = req.body || {};
        const user = await this.userService.findUserByUsername(req.params.username);
        if (!user) { res.status(404).json({ error: "not found" }); return; }
        if (type === "paint") {
          if (!user.paints.includes(id)) user.paints.push(id);
        } else if (type === "hull") {
          user.hulls.set(id, Number(modification) || 0);
        } else if (type === "turret") {
          user.turrets.set(id, Number(modification) || 0);
        } else if (type === "supply") {
          const prev = user.supplies.get(id) ?? 0;
          user.supplies.set(id, prev + (Number(count) || 1));
        } else {
          res.status(400).json({ error: "invalid type" }); return;
        }
        await user.save();
        const client = this.gameServer.findClientByUsername(user.username);
        if (client) {
          client.user = user;
          const SystemPackets = require("@/features/system/system.packets");
          client.sendPacket(new SystemPackets.SystemMessage({ text: "Your garage was updated by staff." }));
          const GarageWorkflow = require("@/features/garage/garage.workflow").GarageWorkflow;
          if (client.getState() === "chat_garage" || client.getState() === "battle_garage") {
            GarageWorkflow.reloadGarage(client, this.gameServer);
          } else {
            const GaragePackets = require("@/features/garage/garage.packets");
            const inventory: any = {
              ...Object.fromEntries(user.turrets),
              ...Object.fromEntries(user.hulls),
              paints: user.paints,
              supplies: user.supplies,
              newbieExpiresAt: user.newbieExpiresAt,
              upScoreExpiresAt: user.upScoreExpiresAt,
              premiumExpiresAt: user.premiumExpiresAt,
              proBattleExpiresAt: user.proBattleExpiresAt,
              crystalAbonementExpiresAt: user.crystalAbonementExpiresAt,
              rank: user.rank,
              chatModeratorLevel: user.chatModeratorLevel,
            };
            const data = this.garageService.buildGarageData(inventory);
            const garageData = { items: data.garageItems, garageBoxId: 0 };
            client.sendPacket(new GaragePackets.GarageItemsPacket({ jsonData: JSON.stringify(garageData) }));
            client.sendPacket(new GaragePackets.MountItemPacket({ itemId: `${user.equippedHull}_m${user.hulls.get(user.equippedHull) ?? 0}`, owned: true }));
            client.sendPacket(new GaragePackets.MountItemPacket({ itemId: `${user.equippedTurret}_m${user.turrets.get(user.equippedTurret) ?? 0}`, owned: true }));
            client.sendPacket(new GaragePackets.MountItemPacket({ itemId: `${user.equippedPaint}_m0`, owned: true }));
          }
        }
        res.json(this.summarizeUser(user));
      } catch (error) {
        logger.error("Admin garage add failed", { error });
        res.status(500).json({ error: "garage add failed" });
      }
    });

    // Garage: remove item — works offline.
    this.app.post("/api/admin/accounts/:username/garage/remove", auth, async (req: Request, res: Response) => {
      try {
        const { type, id, count } = req.body || {};
        const user = await this.userService.findUserByUsername(req.params.username);
        if (!user) { res.status(404).json({ error: "not found" }); return; }
        if (type === "paint") {
          user.paints = user.paints.filter((p) => p !== id);
        } else if (type === "hull") {
          user.hulls.delete(id);
        } else if (type === "turret") {
          user.turrets.delete(id);
        } else if (type === "supply") {
          const prev = user.supplies.get(id) ?? 0;
          const newCount = Math.max(0, prev - (Number(count) || 1));
          if (newCount <= 0) user.supplies.delete(id);
          else user.supplies.set(id, newCount);
        } else {
          res.status(400).json({ error: "invalid type" }); return; }
        await user.save();

        // If online, refresh garage UI immediately
        const client = this.gameServer.findClientByUsername(user.username);
        if (client) {
          client.user = user;
          const SystemPackets = require("@/features/system/system.packets");
          client.sendPacket(new SystemPackets.SystemMessage({ text: "Your garage was updated by staff." }));
          const GarageWorkflow = require("@/features/garage/garage.workflow").GarageWorkflow;
          if (client.getState() === "chat_garage" || client.getState() === "battle_garage") {
            GarageWorkflow.reloadGarage(client, this.gameServer);
          } else {
            const GaragePackets = require("@/features/garage/garage.packets");
            const inventory: any = {
              ...Object.fromEntries(user.turrets),
              ...Object.fromEntries(user.hulls),
              paints: user.paints,
              supplies: user.supplies,
              newbieExpiresAt: user.newbieExpiresAt,
              upScoreExpiresAt: user.upScoreExpiresAt,
              premiumExpiresAt: user.premiumExpiresAt,
              proBattleExpiresAt: user.proBattleExpiresAt,
              crystalAbonementExpiresAt: user.crystalAbonementExpiresAt,
              rank: user.rank,
              chatModeratorLevel: user.chatModeratorLevel,
            };
            const data = this.garageService.buildGarageData(inventory);
            const garageData = { items: data.garageItems, garageBoxId: 0 };
            client.sendPacket(new GaragePackets.GarageItemsPacket({ jsonData: JSON.stringify(garageData) }));
            client.sendPacket(new GaragePackets.MountItemPacket({ itemId: `${user.equippedHull}_m${user.hulls.get(user.equippedHull) ?? 0}`, owned: true }));
            client.sendPacket(new GaragePackets.MountItemPacket({ itemId: `${user.equippedTurret}_m${user.turrets.get(user.equippedTurret) ?? 0}`, owned: true }));
            client.sendPacket(new GaragePackets.MountItemPacket({ itemId: `${user.equippedPaint}_m0`, owned: true }));
          }
        }
        res.json(this.summarizeUser(user));
      } catch (error) {
        logger.error("Admin garage remove failed", { error });
        res.status(500).json({ error: "garage remove failed" });
      }
    });

    // Spawn bonus (gold box or other) in battle
    this.app.post("/api/admin/battles/:battleId/spawn-bonus", auth, (req: Request, res: Response) => {
      try {
        const battle = this.lobbyService.getBattleById(req.params.battleId);
        if (!battle) { res.status(404).json({ error: "battle not found" }); return; }
        const { type, x, y, z, regionIndex } = req.body || {};
        if (!type || x === undefined || y === undefined || z === undefined) { res.status(400).json({ error: "type and x,y,z required" }); return; }
        const pos = { x: Number(x), y: Number(y), z: Number(z) };
        const id = this.battleService.bonus.spawnBonus(battle, type, pos, regionIndex !== undefined ? Number(regionIndex) : undefined);
        res.json({ id });
      } catch (error) {
        logger.error("Spawn bonus failed", { error });
        res.status(500).json({ error: "spawn failed" });
      }
    });

    // Teleport player: to explicit coords, to another player, or to a flag.
    this.app.post("/api/admin/players/:username/teleport", auth, async (req: Request, res: Response) => {
      try {
        const { x, y, z, targetUsername, toFlag } = req.body || {};
        const client = this.gameServer.findClientByUsername(req.params.username);
        if (!client) { res.status(404).json({ error: "player not online" }); return; }

        let destination: { x: number; y: number; z: number } | null = null;

        if (targetUsername) {
          const targetClient = this.gameServer.findClientByUsername(String(targetUsername));
          if (!targetClient || !targetClient.battlePosition) {
            res.status(404).json({ error: "target player not online or has no position" });
            return;
          }
          if (!client.currentBattle || !targetClient.currentBattle || client.currentBattle.battleId !== targetClient.currentBattle.battleId) {
            res.status(400).json({ error: "both players must be in the same battle" });
            return;
          }
          destination = targetClient.battlePosition;
        } else if (toFlag) {
          const battle = client.currentBattle;
          if (!battle) { res.status(400).json({ error: "player is not in a battle" }); return; }
          const flagPos = toFlag === "red"
            ? (battle.flagPositionRed ?? battle.flagBasePositionRed)
            : (battle.flagPositionBlue ?? battle.flagBasePositionBlue);
          if (!flagPos) { res.status(400).json({ error: "no flag position available for this battle" }); return; }
          destination = flagPos;
        } else if (x !== undefined && y !== undefined && z !== undefined) {
          destination = { x: Number(x), y: Number(y), z: Number(z) };
        } else {
          res.status(400).json({ error: "x,y,z OR targetUsername OR toFlag required" });
          return;
        }

        const { teleportTank } = await import("@/features/battle/teleport.util");
        teleportTank(client, destination);
        res.json({ ok: true, destination });
      } catch (error) {
        logger.error("Teleport failed", { error });
        res.status(500).json({ error: "teleport failed" });
      }
    });

    // Get player position
    this.app.get("/api/admin/players/:username/position", auth, (req: Request, res: Response) => {
      const client = this.gameServer.findClientByUsername(req.params.username);
      if (!client) { res.status(404).json({ error: "player not online" }); return; }
      res.json({ position: client.battlePosition ?? null });
    });
  }

  private pruneOnlineSince(currentUsernames: string[]): void {
    const currentSet = new Set(currentUsernames);
    for (const username of Array.from(this.onlineSince.keys())) {
      if (!currentSet.has(username)) this.onlineSince.delete(username);
    }
    for (const username of currentUsernames) {
      if (!this.onlineSince.has(username)) this.onlineSince.set(username, Date.now());
    }
  }

  public start(): void {
    this.server = this.app.listen(this.port, () => {
      logger.info("Admin server started", { port: this.port });
    });

    // Auto-restart the whole process every 24 hours to keep things healthy.
    // Uses the same robust restart logic as the manual restart button.
    this.autoRestartTimer = setInterval(() => {
      logger.info("Scheduled 24h auto-restart triggered");
      this.scheduleProcessRestart(5000);
    }, AUTO_RESTART_INTERVAL_MS);
    this.autoRestartTimer.unref?.();
  }

  public stop(): Promise<void> {
    if (this.autoRestartTimer) {
      clearInterval(this.autoRestartTimer);
      this.autoRestartTimer = null;
    }
    return new Promise((resolve, reject) => {
      if (!this.server) {
        resolve();
        return;
      }
      this.server.close((err) => {
        if (err) {
          reject(err);
          return;
        }
        resolve();
      });
    });
  }

  private summarizeOnlineUser(client: ReturnType<GameServer["getClients"]>[number]) {
    const username = client.user?.username ?? "";
    const since = this.onlineSince.get(username) ?? null;
    return {
      username,
      role: client.user?.chatModeratorLevel ?? ChatModeratorLevel.NONE,
      roleName: client.user ? chatModeratorLevelName(client.user.chatModeratorLevel) : "Offline",
      battleId: client.currentBattle?.battleId ?? null,
      battleName: client.currentBattle?.settings.name ?? null,
      ip: (client as any).socket?.remoteAddress ?? null,
      lastLogin: client.user?.lastLogin?.toISOString() ?? null,
      onlineSinceMs: since,
      onlineDurationMs: since ? Date.now() - since : null,
    };
  }

  private summarizeUser(user: UserDocument) {
    return {
      id: user.id,
      username: user.username,
      email: user.email ?? null,
      crystals: user.crystals,
      experience: user.experience,
      rank: user.rank,
      isActive: user.isActive,
      isPunished: user.isPunished,
      punishmentReason: user.punishmentReason ?? null,
      punishmentExpiresAt: user.punishmentExpiresAt?.toISOString() ?? null,
      mutedUntil: user.mutedUntil?.toISOString() ?? null,
      mutedReason: (user as any).mutedReason ?? null,
      premiumExpiresAt: user.premiumExpiresAt?.toISOString() ?? null,
      chatModeratorLevel: user.chatModeratorLevel,
      roleName: chatModeratorLevelName(user.chatModeratorLevel),
      registeredIp: user.registeredIp ?? null,
      equippedHull: user.equippedHull,
      equippedTurret: user.equippedTurret,
      equippedPaint: user.equippedPaint,
      hulls: Object.fromEntries(user.hulls.entries()),
      turrets: Object.fromEntries(user.turrets.entries()),
      paints: user.paints,
      supplies: Object.fromEntries(user.supplies.entries()),
      online: !!this.gameServer.findClientByUsername(user.username),
      createdAt: user.createdAt?.toISOString() ?? null,
      lastLogin: user.lastLogin?.toISOString() ?? null,
    };
  }
}