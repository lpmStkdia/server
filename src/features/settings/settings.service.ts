import * as crypto from "crypto";
import { UserDocument } from "@/shared/models/user.model";
import { EmailService } from "@/shared/services/email.service";
import { UserService } from "@/shared/services/user.service";
import logger from "@/utils/logger";

export class SettingsService {
    private userService: UserService;
    private emailService: EmailService;

    constructor(userService: UserService, emailService: EmailService) {
        this.userService = userService;
        this.emailService = emailService;
    }

    public async updatePasswordByEmail(originalEmail: string, newPass: string, newEmail: string): Promise<UserDocument> {
        const user = await this.userService.findUserByEmail(originalEmail);
        if (!user) {
            throw new Error(`User with email ${originalEmail} not found.`);
        }

        if (newEmail.toLowerCase() !== (user.email || "").toLowerCase()) {
            const isNewEmailTaken = await this.userService.isEmailInUse(newEmail, user.id);
            if (isNewEmailTaken) {
                throw new Error(`Email ${newEmail} is already in use.`);
            }
            user.email = newEmail;
            user.emailConfirmed = false;
        }

        user.password = newPass;

        const saved = await user.save();

        try {
            await this.emailService.sendPasswordChangedNotification(saved);
        } catch (err) {
            logger.warn(`Failed to send password changed notification to ${saved.email}`, { error: (err as Error).message });
        }

        return saved;
    }

    public async updatePassword(user: UserDocument, newPass: string): Promise<UserDocument> {
        user.password = newPass;

        const saved = await user.save();

        try {
            await this.emailService.sendPasswordChangedNotification(saved);
        } catch (err) {
            logger.warn(`Failed to send password changed notification to ${saved.email}`, { error: (err as Error).message });
        }

        return saved;
    }

    public async linkEmailToAccount(user: UserDocument, newEmail: string): Promise<UserDocument> {
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        const normalizedEmail = newEmail.trim().toLowerCase();
        if (!emailRegex.test(normalizedEmail)) {
            throw new Error("Invalid email format.");
        }

        if (normalizedEmail === (user.email || "").toLowerCase()) {
            if (user.emailConfirmed) {
                return user;
            }
        }

        const isTaken = await this.userService.isEmailInUse(normalizedEmail, user.id);
        if (isTaken) {
            throw new Error("EMAIL_IN_USE");
        }

        const token = crypto.randomBytes(24).toString("hex");
        const expiresAt = new Date(Date.now() + 24 * 60 * 60 * 1000);

        user.pendingEmail = normalizedEmail;
        user.emailConfirmationToken = token;
        user.emailConfirmationTokenExpiresAt = expiresAt;

        await user.save();

        try {
            await this.emailService.sendEmailConfirmation(user, token);
        } catch (error) {
            user.pendingEmail = null;
            user.emailConfirmationToken = null;
            user.emailConfirmationTokenExpiresAt = null;
            await user.save();
            throw error;
        }

        logger.info(`User ${user.username} requested email confirmation for ${normalizedEmail}. Confirmation required.`);
        return user;
    }

    public async confirmEmailToken(token: string): Promise<UserDocument> {
        const user = await this.userService.findUserByEmailConfirmationToken(token);
        if (!user || !user.pendingEmail) {
            throw new Error("TOKEN_INVALID_OR_EXPIRED");
        }

        user.email = user.pendingEmail;
        user.emailConfirmed = true;
        user.pendingEmail = null;
        user.emailConfirmationToken = null;
        user.emailConfirmationTokenExpiresAt = null;

        await user.save();
        logger.info(`User ${user.username} confirmed email ${user.email}.`);
        return user;
    }

    public async requestPasswordReset(email: string): Promise<void> {
        const user = await this.userService.findUserByEmail(email);
        if (!user) {
            throw new Error("USER_NOT_FOUND");
        }

        const token = crypto.randomBytes(24).toString("hex");
        const expiresAt = new Date(Date.now() + 60 * 60 * 1000);

        user.passwordResetToken = token;
        user.passwordResetTokenExpiresAt = expiresAt;

        await user.save();
        await this.emailService.sendPasswordResetEmail(user, token);

        logger.info(`User ${user.username} requested a password reset. Reset email sent.`, {
            email: user.email,
        });
    }

    public async validatePasswordResetToken(token: string): Promise<boolean> {
        const user = await this.userService.findUserByPasswordResetToken(token);
        return !!user;
    }

    public async resetPasswordWithToken(token: string, newPassword: string): Promise<UserDocument> {
        const user = await this.userService.findUserByPasswordResetToken(token);
        if (!user) {
            throw new Error("TOKEN_INVALID_OR_EXPIRED");
        }

        user.password = newPassword;
        user.passwordResetToken = null;
        user.passwordResetTokenExpiresAt = null;

        const savedUser = await user.save();

        try {
            await this.emailService.sendPasswordChangedNotification(savedUser);
        } catch (err) {
            logger.warn(`Failed to send password change notification for ${savedUser.username}`, {
                error: (err as Error).message,
            });
        }

        return savedUser;
    }

    public async sendRecoveryEmail(email: string, code: string): Promise<void> {
        try {
            const user = await this.userService.findUserByEmail(email);
            if (!user) {
                logger.warn(`Attempted to send recovery email but user not found: ${email}`);
                return;
            }
            await this.emailService.sendRecoveryCode(user, code);
        } catch (error) {
            logger.error(`Failed to send recovery email to ${email}`, { error });
        }
    }

    public async setNotifications(user: UserDocument, enabled: boolean): Promise<UserDocument> {
        try {
            user.notificationsEnabled = enabled;
            await user.save();
            logger.info(`User ${user.username} updated notifications to: ${enabled}.`);
            return user;
        } catch (error) {
            logger.error(`Failed to save notification settings for user ${user.username}`, { error });
            throw error;
        }
    }
}