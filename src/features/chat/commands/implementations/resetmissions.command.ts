import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import * as QuestPackets from "@/features/quests/quests.packets";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/** Debug: regenerates the caller's 3 daily missions (fresh/uncompleted) and reopens the window. */
export default class ResetMissionsCommand implements ICommand {
    name: string = "resetmissions";
    description: string = "Resets your daily missions (test). Usage: /resetmissions.";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.ADMINISTRATOR;
    example = "/resetmissions";

    async execute(context: CommandContext, _args: string[]): Promise<void> {
        const user = context.executor.user;
        if (!user) {
            context.reply("Error: user not found.");
            return;
        }

        await context.server.questService.resetDailyQuests(user);

        // Reopen the window with the fresh set (or the summary if somehow empty).
        const data = await context.server.questService.getQuestsForUser(user);
        context.executor.sendPacket(
            data.quests.length === 0 ? new QuestPackets.QuestSummaryWindow(data) : new QuestPackets.ShowQuestsWindow(data)
        );
        context.reply("Daily missions reset.");
    }
}
