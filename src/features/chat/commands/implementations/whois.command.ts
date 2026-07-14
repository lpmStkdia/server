import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel, chatModeratorLevelName } from "@/shared/models/enums/chat-moderator-level.enum";

/** Staff info card about a user: rank, role, clan, crystals, punishment, connection/battle. */
export default class WhoisCommand implements ICommand {
    name = "whois";
    description = "Shows information about a user (rank, role, clan, connection, battle). Usage: /whois <username>.";
    permissionLevel = ChatModeratorLevel.MODERATOR;
    usage = "<username>";
    example = "/whois Joao";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        if (args.length < 1) {
            context.reply("Usage: /whois <username>.");
            return;
        }
        const online = context.server.findClientByUsername(args[0]);
        const user = online?.user ?? (await context.server.userService.findUserByUsername(args[0]));
        if (!user) {
            context.reply(`User "${args[0]}" not found.`);
            return;
        }

        const clanTag = await context.server.clanService.getTagForUser(user);
        context.reply(`=== ${user.username} ===`);
        context.reply(`Rank: ${user.rank} | XP: ${user.experience} | Crystals: ${user.crystals}`);
        context.reply(`Role: ${chatModeratorLevelName(user.chatModeratorLevel)} | Clan: ${clanTag ?? "none"}`);
        if (user.isPunished && user.punishmentExpiresAt && user.punishmentExpiresAt > new Date()) {
            context.reply(`BANNED until ${user.punishmentExpiresAt.toISOString()} — reason: ${user.punishmentReason ?? "not provided"}`);
        }
        if (online) {
            const battle = online.currentBattle ? `battle ${online.currentBattle.battleId}${online.isSpectator ? " (spectator)" : ""}` : "not in a battle";
            context.reply(`Online — IP ${online.getRemoteAddress()} — ${battle}.`);
        } else {
            context.reply(`Offline — last login: ${user.lastLogin ? user.lastLogin.toISOString() : "never"}.`);
        }
    }
}
