import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/**
 * Force-ends a battle (results screen). No argument = the battle the caller is currently in or spectating;
 * `/finish <id>` ends a specific battle by its id (works from anywhere, e.g. the battle list).
 */
export default class FinishBattleCommand implements ICommand {
    name = "finish";
    description = "Ends a match (the current one/the one you're watching, or a specific id). Usage: /finish [id].";
    permissionLevel = ChatModeratorLevel.ADMINISTRATOR;
    usage = "[id]";
    example = "/finish";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const { server } = context;

        let battle = context.executor.currentBattle ?? null;
        if (args.length >= 1) {
            battle = server.lobbyService.getBattleById(args[0]) ?? null;
            if (!battle) {
                context.reply(`Match "${args[0]}" not found.`);
                return;
            }
        }
        if (!battle) {
            context.reply("You must be in a match or provide an id. Usage: /finish [id].");
            return;
        }

        const ended = server.battleService.finishBattle(battle);
        context.reply(
            ended ? `Match ${battle.battleId} finished.` : `Match ${battle.battleId} is already finishing.`
        );
    }
}
