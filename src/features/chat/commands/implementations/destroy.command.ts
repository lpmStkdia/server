import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Destroys a tank in the current battle — your own by default, or another player's when a nick is given. */
export default class DestroyTankCommand implements ICommand {
    name = "destroy";
    description = "Destroys a player's tank (empty = you). Usage: /destroy [username].";
    permissionLevel = ChatModeratorLevel.MODERATOR;
    usage = "[username]";
    example = "/destroy Joao";

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
            if (!found || found.currentBattle?.battleId !== client.currentBattle.battleId) {
                context.reply(`Player "${args[0]}" is not in this match.`);
                return;
            }
            target = found;
        }

        const destroyed = server.battleService.forceDestroyTank(target);
        context.reply(
            destroyed
                ? `${target.user?.username}'s tank was destroyed.`
                : `Could not destroy: ${target.user?.username} does not have an active tank on the field.`
        );
    }
}
