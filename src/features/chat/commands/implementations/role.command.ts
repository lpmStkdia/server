import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import {
    ChatModeratorLevel,
    chatModeratorLevelName,
    parseChatModeratorLevel,
} from "@/shared/models/enums/chat-moderator-level.enum";

/**
 * /role <username> <role> — assigns a staff role to a user. Restricted to Community Manager (the top
 * role). Persists to the DB (works on offline users) and, if the target is online, updates their live
 * session immediately so command permissions and the chat tag reflect without a relogin. The very first
 * Community Manager is bootstrapped with `npm run set-role` (see scripts/setRole.ts).
 */
export default class RoleCommand implements ICommand {
    name = "role";
    description = "Sets the staff role of a user. Usage: /role <username> <role>.";
    permissionLevel = ChatModeratorLevel.COMMUNITY_MANAGER;
    usage = "<username> <none/candidate/moderator/administrator/cm>";
    example = "/role John moderator";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        if (args.length < 2) {
            context.reply("Usage: /role <username> <role>. Roles: none, candidate, moderator, administrator, cm.");
            return;
        }

        const targetName = args[0];
        const level = parseChatModeratorLevel(args[1]);
        if (level === null) {
            context.reply(`Invalid role "${args[1]}". Valid roles: none, candidate, moderator, administrator, cm.`);
            return;
        }

        try {
            const updated = await context.server.userService.setChatModeratorLevel(targetName, level);

            // Reflects on the online session (command permissions + chat tag) without needing a relog.
            const online = context.server.findClientByUsername(updated.username);
            if (online?.user) {
                online.user.chatModeratorLevel = level;
            }

            context.reply(`Role for ${updated.username} set to ${chatModeratorLevelName(level)}.`);
        } catch (error: any) {
            context.reply(`Error: ${error.message}`);
        }
    }
}
