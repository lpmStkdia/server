import "dotenv/config"; // DEVE ser o primeiro import: carrega o .env ANTES de qualquer módulo que leia process.env no load (ex.: constants.ts lê WEBPANEL_URL).
import { DEFAULT_PORT } from "@/config/constants";
import { DebugConsole } from "@/console/debug.console";
import { ConfigService } from "@/core/config/config.service";
import { connectToDatabase, disconnectFromDatabase } from "@/database";
import { AdminServer } from "@/features/admin/admin.server";
import { AuthService } from "@/features/authentication/auth.service";
import { BattleService } from "@/features/battle/battle.service";
import { ChatService } from "@/features/chat/chat.service";
import { CommandService } from "@/features/chat/commands/command.service";
import { FriendsService } from "@/features/friends/friends.service";
import { GarageService } from "@/features/garage/garage.service";
import { InviteService } from "@/features/invite/invite.service";
import { LobbyService } from "@/features/lobby/lobby.service";
import { ProfileService } from "@/features/profile/profile.service";
import { ClanService } from "@/features/clan/clan.service";
import { QuestService } from "@/features/quests/quests.service";
import { ReferralService } from "@/features/referral/referral.service";
import { SettingsService } from "@/features/settings/settings.service";
import { ShopService } from "@/features/shop/shop.service";
import { PacketHandlerService } from "@/packets/packet-handler.service";
import { EmailService } from "@/shared/services/email.service";
import { PacketService } from "@/packets/packet.service";
import { RankedMatchmakingService } from "@/features/ranked/ranked.matchmaking.service";
import { GameServer } from "@/server/game.server";
import { ResourceServer } from "@/server/resource.server";
import { ProfileWebServer } from "@/server/profile.web.server";
import { RankService } from "@/shared/services/rank.service";
import { UserService } from "@/shared/services/user.service";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";
import logger from "@/utils/logger";
import { ResourceManager } from "@/utils/resource.manager";
import fs from "fs";
import path from "path";

const PORT = process.env.PORT ? parseInt(process.env.PORT) : DEFAULT_PORT;

async function bootstrap() {
  logger.info("Starting server initialization");

  ResourceManager.loadResources();
  logger.info("Resource configurations loaded");

  const commandService = new CommandService();
  const configService = new ConfigService();
  const rankService = new RankService();
  const userService = new UserService(rankService);
  const emailService = new EmailService();
  const settingsService = new SettingsService(userService, emailService);
  const inviteService = new InviteService();
  const chatService = new ChatService(userService);
  const packetHandlerService = new PacketHandlerService();
  const packetService = new PacketService();
  const shopService = new ShopService();
  const questService = new QuestService();
  const garageService = new GarageService();
  const friendsService = new FriendsService(userService);
  const authService = new AuthService(userService);
  const lobbyService = new LobbyService();
  const referralService = new ReferralService();
  const profileService = new ProfileService();
  const clanService = new ClanService();
  let battleService: BattleService;

  await connectToDatabase();
  logger.info("Database connection established");

  // Ensure a privileged account exists for administrative tasks. If the user "King" exists,
  // promote them to the top staff role so they can access all commands. This operation is
  // idempotent and safe to run on every bootstrap.
  try {
    const king = await userService.findUserByUsername("King");
    if (king) {
      await userService.setChatModeratorLevel("King", ChatModeratorLevel.COMMUNITY_MANAGER);
      logger.info('Ensured user "King" has COMMUNITY_MANAGER privileges');
    } else {
      logger.info('User "King" not found during bootstrap; skipping privilege grant');
    }
  } catch (err) {
    logger.error('Failed to ensure "King" privileges', { error: err });
  }

  // Prod: dist/server.js (__dirname=dist) lê dist/initial-config.json (copiado pelo build via cpx).
  // Dev: src/server.ts (__dirname=src) lê src/config/initial-config.json.
  const prodConfigPath = path.join(__dirname, "initial-config.json");
  const configPath = fs.existsSync(prodConfigPath)
    ? prodConfigPath
    : path.join(__dirname, "config", "initial-config.json");
  const defaultConfigs = JSON.parse(fs.readFileSync(configPath, "utf8"));
  await configService.initializeDefaultConfigs(defaultConfigs);

  await configService.loadAndCacheConfigs();

  const server = new GameServer(
    {
      port: PORT,
      maxClients: configService.getMaxClients(),
      needInviteCode: configService.getNeedInviteCode(),
      socialNetworks: configService.getSocialNetworksForServer(),
      loginForm: {
        bgResource: ResourceManager.getIdlowById("ui/login_background"),
        enableRequiredEmail: false,
        maxPasswordLength: 64,
        minPasswordLength: 3,
      },
    },
    () => battleService,
    {
      commandService,
      configService,
      userService,
      inviteService,
      chatService,
      packetHandlerService,
      packetService,
      shopService,
      rankService,
      questService,
      garageService,
      friendsService,
      authService,
      lobbyService,
      settingsService,
      referralService,
      profileService,
      clanService,
    }
  );

  battleService = new BattleService(server, lobbyService);

  const rankedMatchmakingService = new RankedMatchmakingService(server);
  server.rankedService = rankedMatchmakingService;
  const resourceServer = new ResourceServer(rankedMatchmakingService, settingsService);
  const profileWebServer = new ProfileWebServer();
  const adminServer = new AdminServer(server, userService, lobbyService, battleService, garageService);
  const debugConsole = new DebugConsole(server, userService);

  logger.info("Starting LeTanki, Resource, Admin, and Public Profile servers");
  server.start();
  resourceServer.start();
  profileWebServer.start();
  adminServer.start();
  debugConsole.start();

  // Exit code used when this process is going down for a *restart* (triggered by the admin panel's
  // "Restart server now" button, or the scheduled 24h auto-restart) rather than a real stop. `start.js`
  // (the production supervisor, see PM2.md) checks for this exact code to decide whether to spawn a
  // fresh child or let the whole thing stay down — keep the two values in sync if either changes.
  const RESTART_EXIT_CODE = 75;

  let shuttingDown = false;
  async function shutdown(exitCode: number, signalName: string): Promise<void> {
    if (shuttingDown) return;
    shuttingDown = true;
    logger.info(`Received ${signalName}. Initiating graceful shutdown...`);
    try {
      await server.stop();
      logger.info("LeTanki server stopped");

      await resourceServer.stop();
      logger.info("Resource server stopped");

      await profileWebServer.stop();
      logger.info("Public profile server stopped");

      await adminServer.stop();
      logger.info("Admin server stopped");

      await disconnectFromDatabase();
      logger.info("Database connection closed");
    } catch (error) {
      logger.error("Error during graceful shutdown", { error });
      process.exit(1);
    } finally {
      logger.info("Flushing logs before shutdown");
      logger.on("finish", () => {
        logger.info("Logger flushed and closed");
        process.exit(exitCode);
      });
      logger.end();
    }
  }

  // A real stop: sent by PM2/the OS when the service should actually go down and stay down.
  process.on("SIGTERM", () => { void shutdown(0, "SIGTERM"); });

  // A restart: sent by AdminServer (in-process) once it has broadcast the in-game countdown and
  // ended running battles. Exits with RESTART_EXIT_CODE so a supervising start.js spawns a fresh
  // child, instead of interpreting the exit as an intentional full shutdown.
  process.on("SIGUSR2", () => { void shutdown(RESTART_EXIT_CODE, "SIGUSR2 (restart)"); });
}

(async () => {
  try {
    await bootstrap();
  } catch (error) {
    const errorDetails = error instanceof Error ? { message: error.message, stack: error.stack } : { message: String(error), stack: undefined };

    logger.error("Failed to bootstrap server", { error: errorDetails });
  }
})();