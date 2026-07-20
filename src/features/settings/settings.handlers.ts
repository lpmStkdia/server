import { GameClient } from "@/server/game.client";
import { GameServer } from "@/server/game.server";
import { IPacketHandler } from "@/shared/interfaces/ipacket-handler";
import logger from "@/utils/logger";
import * as SettingsPackets from "./settings.packets";
import { ISocialLink } from "./settings.types";

export class RequestSettingsHandler implements IPacketHandler<SettingsPackets.RequestSettings> {
    public readonly packetId = SettingsPackets.RequestSettings.getId();

    public execute(client: GameClient, server: GameServer): void {
        if (!client.user) {
            logger.warn("RequestSettings received from unauthenticated client.", { client: client.getRemoteAddress() });
            return;
        }

        const socialAuthConfig = server.configService.getSocialAuthLinks();
        const socialLinks: ISocialLink[] = Object.entries(socialAuthConfig).map(([id, url]) => ({
            snId: id,
            authorizationUrl: url as string,
            isLinked: false,
        }));

        const passwordCreated = !!client.user.password;

        client.sendPacket(new SettingsPackets.UserSettingsSocial(passwordCreated, socialLinks));
        client.sendPacket(new SettingsPackets.UserSettingsNotifications({ notificationsEnabled: client.user.notificationsEnabled }));
    }
}

export class SetNotificationsHandler implements IPacketHandler<SettingsPackets.SetNotifications> {
    public readonly packetId = SettingsPackets.SetNotifications.getId();

    public async execute(client: GameClient, server: GameServer, packet: SettingsPackets.SetNotifications): Promise<void> {
        if (!client.user) {
            logger.warn("SetNotifications received from unauthenticated client.", { client: client.getRemoteAddress() });
            return;
        }
        client.user = await server.settingsService.setNotifications(client.user, packet.enabled);
    }
}

export class UpdatePasswordHandler implements IPacketHandler<SettingsPackets.UpdatePassword> {
    public readonly packetId = SettingsPackets.UpdatePassword.getId();

    public async execute(client: GameClient, server: GameServer, packet: SettingsPackets.UpdatePassword): Promise<void> {
        if (!packet.password) {
            client.sendPacket(new SettingsPackets.UpdatePasswordResult({ isError: true, message: "Invalid data." }));
            return;
        }

        try {
            if (client.user) {
                const savedUser = await server.settingsService.updatePassword(client.user, packet.password);
                client.user = savedUser;
                logger.info(`Password updated for logged-in user ${client.user.username}`, { client: client.getRemoteAddress() });
            } else if (client.recoveryEmail) {
                const newEmail = packet.email?.trim() || client.recoveryEmail;
                await server.settingsService.updatePasswordByEmail(client.recoveryEmail, packet.password, newEmail);
                logger.info(`Password updated for user with original email ${client.recoveryEmail}`, { client: client.getRemoteAddress(), email: newEmail });
                client.recoveryEmail = null;
                client.recoveryCode = null;
            } else {
                client.sendPacket(new SettingsPackets.UpdatePasswordResult({ isError: true, message: "Invalid data." }));
                return;
            }

            client.sendPacket(new SettingsPackets.UpdatePasswordResult({ isError: false, message: "Your password was successfully changed." }));
        } catch (error: any) {
            logger.error(`Failed to update password`, { error: error.message, client: client.getRemoteAddress() });
            if (error.message.includes("is already in use")) {
                client.sendPacket(new SettingsPackets.UpdatePasswordResult({ isError: true, message: "The provided email is already in use by another account." }));
            } else {
                client.sendPacket(new SettingsPackets.UpdatePasswordResult({ isError: true, message: "An error occurred while updating your password." }));
            }
        }
    }
}

export class RequestChangePasswordFormHandler implements IPacketHandler<SettingsPackets.RequestChangePasswordForm> {
    public readonly packetId = SettingsPackets.RequestChangePasswordForm.getId();
    public execute(client: GameClient, server: GameServer): void {
        if (!client.user) {
            logger.warn("RequestChangePasswordForm received from unauthenticated client.", { client: client.getRemoteAddress() });
            return;
        }
        const passwordCreated = !!client.user.password;
        if (passwordCreated) {
            client.sendPacket(new SettingsPackets.ChangePasswordForm());
        } else {
            client.sendPacket(new SettingsPackets.CreatePasswordForm());
        }
    }
}

export class CheckPasswordHandler implements IPacketHandler<SettingsPackets.CheckPassword> {
    public readonly packetId = SettingsPackets.CheckPassword.getId();

    public async execute(client: GameClient, server: GameServer, packet: SettingsPackets.CheckPassword): Promise<void> {
        if (!client.user || !packet.password) {
            client.sendPacket(new SettingsPackets.CheckPasswordReject());
            return;
        }

        client.user.verifyPassword(packet.password, (error, isMatch) => {
            if (error || !isMatch) {
                client.sendPacket(new SettingsPackets.CheckPasswordReject());
                return;
            }
            client.sendPacket(new SettingsPackets.CheckPasswordAccept());
        });
    }
}

export class LinkEmailRequestHandler implements IPacketHandler<SettingsPackets.LinkEmailRequest> {
    public readonly packetId = SettingsPackets.LinkEmailRequest.getId();
    public async execute(client: GameClient, server: GameServer, packet: SettingsPackets.LinkEmailRequest): Promise<void> {
        const currentUser = client.user;
        if (!currentUser || !packet.email) return;
        try {
            const updatedUser = await server.settingsService.linkEmailToAccount(currentUser, packet.email);
            client.user = updatedUser;
            client.sendPacket(new SettingsPackets.LinkAccountResultSuccess({ identifier: updatedUser.pendingEmail ?? updatedUser.email ?? null }));
        } catch (error: any) {
            if (error.message === "EMAIL_IN_USE") {
                client.sendPacket(new SettingsPackets.LinkAccountFailedAccountInUse({ method: "email" }));
            } else {
                logger.error(`Failed to link email for user ${currentUser.username}`, { error: error.message, client: client.getRemoteAddress() });
                client.sendPacket(new SettingsPackets.LinkAccountResultError());
            }
        }
    }
}

export class LinkEmailWithPasswordHandler implements IPacketHandler<SettingsPackets.LinkEmailWithPassword> {
    public readonly packetId = SettingsPackets.LinkEmailWithPassword.getId();

    public async execute(client: GameClient, server: GameServer, packet: SettingsPackets.LinkEmailWithPassword): Promise<void> {
        if (!client.user || !packet.password) {
            client.sendPacket(new SettingsPackets.LinkAccountResultError());
            return;
        }

        const login = packet.login?.trim() || "";
        const password = packet.password;
        const currentLogin = client.user.login?.toLowerCase() || "";
        const currentEmail = client.user.email?.toLowerCase() || "";
        const currentUsername = client.user.username?.toLowerCase() || "";
        const normalizedLogin = login.toLowerCase();
        const shouldFallbackToPasswordUpdate = !login
            || normalizedLogin === currentLogin
            || normalizedLogin === currentEmail
            || normalizedLogin === currentUsername;

        if (shouldFallbackToPasswordUpdate) {
            // Support older/alternative client flows that reuse LinkEmailWithPassword for
            // direct password updates. This also covers clients that send the current email
            // or username in the login field while changing password.
            try {
                const savedUser = await server.settingsService.updatePassword(client.user, password);
                client.user = savedUser;
                logger.info(`Password updated via LinkEmailWithPassword fallback for user ${client.user.username}`, {
                    client: client.getRemoteAddress(),
                    loginProvided: login,
                });
                client.sendPacket(new SettingsPackets.UpdatePasswordResult({ isError: false, message: "Your password was successfully changed." }));
            } catch (error: any) {
                logger.error(`Failed to update password via LinkEmailWithPassword fallback`, {
                    error: error.message,
                    client: client.getRemoteAddress(),
                    loginProvided: login,
                });
                client.sendPacket(new SettingsPackets.UpdatePasswordResult({ isError: true, message: "An error occurred while updating your password." }));
            }
            return;
        }

        const username = client.user.username;
        client.user.verifyPassword(password, async (error: Error | undefined, isMatch?: boolean) => {
            if (error || !isMatch) {
                logger.info(`LinkEmailWithPassword password verification failed`, {
                    client: client.getRemoteAddress(),
                    login,
                    username,
                });
                client.sendPacket(new SettingsPackets.LinkAccountResultError());
                return;
            }

            try {
                const updatedUser = await server.settingsService.linkEmailToAccount(client.user!, login);
                client.user = updatedUser;
                client.sendPacket(new SettingsPackets.LinkAccountResultSuccess({ identifier: updatedUser.pendingEmail ?? updatedUser.email ?? null }));
            } catch (linkError: any) {
                if (linkError.message === "EMAIL_IN_USE") {
                    client.sendPacket(new SettingsPackets.LinkAccountFailedAccountInUse({ method: "email" }));
                } else {
                    logger.error(`Failed to link email via LinkEmailWithPassword`, {
                        error: linkError.message,
                        client: client.getRemoteAddress(),
                        login,
                    });
                    client.sendPacket(new SettingsPackets.LinkAccountResultError());
                }
            }
        });
    }
}

export class RequestAccountActionEmailHandler implements IPacketHandler<SettingsPackets.RequestAccountActionEmail> {
    public readonly packetId = SettingsPackets.RequestAccountActionEmail.getId();

    public execute(client: GameClient, server: GameServer, _packet: SettingsPackets.RequestAccountActionEmail): void {
        if (!client.user) {
            logger.warn("RequestAccountActionEmail received from unauthenticated client.", { client: client.getRemoteAddress() });
            return;
        }

        if (client.user.pendingEmail) {
            client.sendPacket(new SettingsPackets.LinkAccountResultSuccess({ identifier: client.user.pendingEmail }));
            return;
        }

        client.sendPacket(new SettingsPackets.LinkAccountResultError());
    }
}
