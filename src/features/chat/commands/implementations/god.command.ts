import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Toggles damage immunity on a tank (weapons, mines, splash, self-burn). Kill/kick boundary zones still
 *  apply — disable those with /bounds off. Resets on leaving the battle. */
export default class GodCommand implements ICommand {
    name = "god";
    description = "Toggles a tank's invincibility (empty = yourself). Usage: /god [username].";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.ADMINISTRATOR;
    usage = "[username]";
    example = "/god";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const client = context.executor;
        const { server } = context;
        if (!client.user || !client.currentBattle) {
            context.reply("You must be in a match.");
            return;
        }

        let target = client;
        if (args.length >= 1) {
            const found = server.findClientByUsername(args[0]);
            if (!found?.user || found.currentBattle?.battleId !== client.currentBattle.battleId) {
                context.reply(`Player "${args[0]}" is not in this match.`);
                return;
            }
            target = found;
        }

        target.godMode = !target.godMode;
        context.reply(`Invincibility for ${target.user?.username}: ${target.godMode ? "ENABLED" : "disabled"}.`);
    }
}
