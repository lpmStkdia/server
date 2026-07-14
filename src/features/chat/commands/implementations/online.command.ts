import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Lists everyone connected, with the battle each one is in (if any). */
export default class OnlineCommand implements ICommand {
    name = "online";
    description = "Lists connected players and which battle they are in. Usage: /online.";
    permissionLevel = ChatModeratorLevel.MODERATOR;

    async execute(context: CommandContext, _args: string[]): Promise<void> {
        const authenticated = context.server.getClients().filter((c) => c.user);
        context.reply(`=== Online: ${authenticated.length} player(s) ===`);
        for (const c of authenticated) {
            const battle = c.currentBattle ? ` — battle ${c.currentBattle.battleId}${c.isSpectator ? " (spectator)" : ""}` : "";
            context.reply(`${c.user!.username}${battle}`);
        }
    }
}
