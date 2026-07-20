import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import {
    ChatModeratorLevel,
    chatModeratorLevelName,
    hasModeratorPower,
} from "@/shared/models/enums/chat-moderator-level.enum";

/** Cargo groups shown by /help, from highest to lowest. */
const GROUP_ORDER: ChatModeratorLevel[] = [
    ChatModeratorLevel.COMMUNITY_MANAGER,
    ChatModeratorLevel.ADMINISTRATOR,
    ChatModeratorLevel.MODERATOR,
    ChatModeratorLevel.CANDIDATE,
    ChatModeratorLevel.NONE,
];

const GROUP_LABEL: Record<ChatModeratorLevel, string> = {
    [ChatModeratorLevel.COMMUNITY_MANAGER]: "COMMUNITY MANAGER",
    [ChatModeratorLevel.ADMINISTRATOR]: "ADMINISTRATOR",
    [ChatModeratorLevel.MODERATOR]: "MODERATOR",
    [ChatModeratorLevel.CANDIDATE]: "CANDIDATE",
    [ChatModeratorLevel.HELPERR]: "CANDIDATE (legacy alias)",
    [ChatModeratorLevel.NONE]: "PUBLIC (all players)",
};

/** The usage lives in `usage`, so drop any "Usage: ..." tail from the description to avoid duplication. */
function whatItDoes(description: string): string {
    return description.replace(/\s*Usage:.*$/i, "").trim();
}

/** Full list line, e.g. "/role <username> [none/candidate/...] — Sets the staff role of a user." */
function listLine(cmd: ICommand): string {
    const params = cmd.usage ? " " + cmd.usage : "";
    return `/${cmd.name}${params} — ${whatItDoes(cmd.description)}`;
}

/**
 * /help — COMPACT list: one line per role group with just the command names the caller can use.
 * /help * — the FULL wall: every accessible command grouped by role with parameters + description.
 * /help <command> — the detail (parameters with hardcoded options as [a/b/c], description, example, role).
 */
export default class HelpCommand implements ICommand {
    name = "help";
    description = "Lists available commands (* = full list with descriptions). Usage: /help [command/*].";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.NONE;
    usage = "[command/*]";
    example = "/help role";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const level = context.executor.user!.chatModeratorLevel;
        const service = context.server.commandService;

        // /help * — the "wall": full list grouped by role with parameters + description.
        if (args[0] === "*") {
            const accessible = service.getCommands().filter((c) => hasModeratorPower(level, c.permissionLevel));
            context.reply("=== Available commands — use /help <command> to see an example ===");
            for (const group of GROUP_ORDER) {
                const inGroup = accessible
                    .filter((c) => c.permissionLevel === group)
                    .sort((a, b) => a.name.localeCompare(b.name));
                if (inGroup.length === 0) continue;
                context.reply(`— ${GROUP_LABEL[group]} —`);
                for (const cmd of inGroup) context.reply(listLine(cmd));
            }
            return;
        }

        // /help <command> — detail of a specific command.
        if (args.length >= 1) {
            const name = args[0].replace(/^\//, "").toLowerCase();
            const cmd = service.getCommand(name);
            if (!cmd) {
                context.reply(`Command "/${name}" not found. Use /help to see the list.`);
                return;
            }
            if (!hasModeratorPower(level, cmd.permissionLevel)) {
                context.reply(`You do not have permission to use /${cmd.name}.`);
                return;
            }
            context.reply(`/${cmd.name}${cmd.usage ? " " + cmd.usage : ""}`);
            context.reply(whatItDoes(cmd.description));
            if (cmd.example) {
                context.reply(`Example: ${cmd.example}`);
            }
            context.reply(
                cmd.permissionLevel === ChatModeratorLevel.NONE
                    ? "Access: all players."
                    : `Minimum role: ${chatModeratorLevelName(cmd.permissionLevel)}.`
            );
            return;
        }

        // /help — COMPACT list: one line per role, just the names (detail lives in /help <command>).
        const accessible = service.getCommands().filter((c) => hasModeratorPower(level, c.permissionLevel));

        context.reply("=== Commands — use /help <command> for description and usage ===");
        for (const group of GROUP_ORDER) {
            const names = accessible
                .filter((c) => c.permissionLevel === group)
                .map((c) => c.name)
                .sort()
                .join(", ");
            if (!names) continue;
            context.reply(`${GROUP_LABEL[group]}: ${names}`);
        }
    }
}
