import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Forces the respawn flow for a player stuck dead/waiting (own tank by default). An ACTIVE tank is
 *  refused — use /destroy to blow it up (it respawns on its own). */
export default class SpawnCommand implements ICommand {
    name = "spawn";
    description = "Forces a respawn for a stuck player (dead/waiting; empty = you). Usage: /spawn [username].";
    permissionLevel = ChatModeratorLevel.MODERATOR;
    usage = "[username]";
    example = "/spawn Joao";

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
        if (target.isSpectator) {
            context.reply(`${target.user?.username} is a spectator.`);
            return;
        }
        if (target.battleState === "active") {
            context.reply(`${target.user?.username} is already on the field — use /destroy to destroy and respawn.`);
            return;
        }

        server.battleService.prepareRespawn(target);
        context.reply(`Forced respawn for ${target.user?.username}.`);
    }
}
