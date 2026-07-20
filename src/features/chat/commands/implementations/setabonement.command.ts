import { CommandContext, ICommand } from "@/features/chat/commands/command.types";
import { ChatModeratorLevel } from "@/shared/models/enums/chat-moderator-level.enum";
import { isCrystalAbonementActive } from "@/shared/models/passes";

/**
 * Ativa (ou desativa) o abonement de Dobro de Cristais na PRÓPRIA conta — para testar a UI (card no
 * depósito + indicador de dobro no shop). Seta `crystalAbonementExpiresAt`. O efeito aparece ao REABRIR
 * a garagem/loja (não há pacote incremental para isso). Dobra só cristais de DOAÇÃO, não ganhos em jogo.
 */
export default class SetAbonementCommand implements ICommand {
    name = "setabonement";
    description = "Sets Double Crystals on your account for N hours (default 24; 0 disables). Usage: /setabonement [hours].";
    permissionLevel: ChatModeratorLevel = ChatModeratorLevel.ADMINISTRATOR;
    usage = "[horas]";
    example = "/setabonement 24";

    async execute(context: CommandContext, args: string[]): Promise<void> {
        const user = context.executor.user;
        if (!user) return;

        const hours = args[0] !== undefined ? parseInt(args[0], 10) : 24;
        if (isNaN(hours)) {
            context.reply("Usage: /setabonement [hours] (default 24; 0 disables).");
            return;
        }

        try {
            if (hours <= 0) {
                user.crystalAbonementExpiresAt = null;
                await user.save();
                context.reply("Double Crystals disabled. Reopen garage/shop to refresh.");
                return;
            }
            user.crystalAbonementExpiresAt = new Date(Date.now() + hours * 60 * 60 * 1000);
            await user.save();
            context.reply(`Double Crystals enabled for ${hours}h (active=${isCrystalAbonementActive(user)}). Reopen garage/shop to refresh.`);
        } catch (error: any) {
            context.reply(`Error: ${error.message}`);
        }
    }
}
