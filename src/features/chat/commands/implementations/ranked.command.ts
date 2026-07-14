import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { sendWebPanel } from "@/features/webpanel/webpanel.service";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";

/**
 * /ranked — opens the Ranked Match panel (opaque webview). Phase 0 SPIKE: validates that the opaque
 * HTMLLoader renders and receives input over the Stage3D. Real search (queue/matchmaking) lands in
 * Phase 1; the JS<->AS bridge in Phase 0b.
 */
export default class RankedCommand implements ICommand {
    name = "ranked";
    description = "Opens the Ranked Match panel.";
    permissionLevel = ChatModeratorLevel.MODERATOR;

    async execute(context: CommandContext, _args: string[]): Promise<void> {
        // If already searching/in a found match, reopen at the small (widget) size, not fullscreen.
        const size = context.server.rankedService?.panelSizeFor(context.executor.user!.id) ?? { width: 0, height: 0 };
        sendWebPanel(context.executor, size, "ranked-command");
        context.reply("Opening Ranked Match panel…");
    }
}
