import nodemailer from "nodemailer";
import logger from "@/utils/logger";
import { UserDocument } from "@/shared/models/user.model";

export class EmailService {
    private transporter: nodemailer.Transporter;
    private fromAddress: string;
    private confirmationUrlBase: string;
    private passwordResetUrlBase: string;
    private enabled: boolean;

    constructor() {
        const user = (process.env.EMAIL_USER || process.env.GMAIL_USER || "").trim();
        let password = (process.env.EMAIL_PASSWORD || process.env.GMAIL_APP_PASSWORD || "").trim();
        // Some UIs display app passwords with spaces for readability (eg "abcd efgh ijkl mnop").
        // Remove internal whitespace so the SMTP auth works with the raw token.
        password = password.replace(/\s+/g, "");
        this.fromAddress = (process.env.EMAIL_FROM || user).trim();
        const emailHost = (process.env.EMAIL_CONFIRMATION_HOST || process.env.EMAIL_HOST || process.env.SERVER_HOST || process.env.HOST || "localhost").trim();
        const emailPort = process.env.RESOURCE_PORT || "9999";
        this.confirmationUrlBase = (process.env.EMAIL_CONFIRMATION_URL_BASE || `http://${emailHost}:${emailPort}/email/confirm`).trim();
        this.passwordResetUrlBase = (process.env.PASSWORD_RESET_URL_BASE || `http://${emailHost}:${emailPort}/password/reset`).trim();
        this.enabled = Boolean(user && password && this.fromAddress && this.confirmationUrlBase && this.passwordResetUrlBase);

        this.transporter = nodemailer.createTransport({
            host: "smtp.gmail.com",
            port: 465,
            secure: true,
            auth: {
                user,
                pass: password,
            },
        });

        if (this.enabled) {
            this.transporter.verify((err) => {
                if (err) {
                    logger.warn("Email transporter verification failed", { error: err });
                } else {
                    logger.info("Email transporter verified");
                }
            });
        }
    }

    public async sendEmailConfirmation(user: UserDocument, token: string): Promise<void> {
        if (!this.enabled) {
            logger.error("EmailService is not configured. Set EMAIL_USER and EMAIL_PASSWORD.");
            throw new Error("E-mail serviço não está configurado.");
        }

        const confirmationUrl = `${this.confirmationUrlBase}?token=${encodeURIComponent(token)}`;
        const subject = "Confirm your email address for LeTanki";
        const html = `
            <p>Hello ${user.username},</p>
            <p>You requested to link this email address to your LeTanki account.</p>
            <p>Click the link below to confirm your email:</p>
            <p><a href="${confirmationUrl}">Confirm email address</a></p>
            <p>If the link does not work, copy and paste this URL into your browser:</p>
            <p>${confirmationUrl}</p>
            <p>This link expires in 24 hours.</p>
            <p>If you did not request this change, please ignore this message.</p>
        `;

        const mailOptions: nodemailer.SendMailOptions = {
            from: this.fromAddress,
            to: user.pendingEmail ?? undefined,
            subject,
            html,
        };

        try {
            const info = await this.transporter.sendMail(mailOptions);
            const result = { messageId: info.messageId, accepted: info.accepted, rejected: info.rejected, response: info.response };
            logger.info(`Email confirmation sent to ${user.pendingEmail ?? user.email}`, {
                user: user.username,
                email: user.pendingEmail ?? user.email,
                result,
            });
        } catch (error) {
            logger.error("Failed to send email confirmation", {
                error,
                user: user.username,
                email: user.pendingEmail ?? user.email,
            });
            throw error;
        }
    }

    public async sendPasswordResetEmail(user: UserDocument, token: string): Promise<void> {
        if (!this.enabled) {
            logger.error("EmailService is not configured. Set EMAIL_USER and EMAIL_PASSWORD.");
            throw new Error("Email service is not configured.");
        }

        const resetUrl = `${this.passwordResetUrlBase}?token=${encodeURIComponent(token)}`;
        const subject = "Reset your LeTanki password";
        const html = `
            <p>Hello ${user.username},</p>
            <p>You requested to reset your LeTanki password.</p>
            <p>Click the link below to open the temporary password reset page:</p>
            <p><a href="${resetUrl}">Reset your password</a></p>
            <p>If the link does not work, copy and paste this URL into your browser:</p>
            <p>${resetUrl}</p>
            <p>This link expires in 1 hour.</p>
            <p>If you did not request this change, please ignore this message.</p>
        `;

        const mailOptions: nodemailer.SendMailOptions = {
            from: this.fromAddress,
            to: user.email ?? undefined,
            subject,
            html,
        };

        try {
            const info = await this.transporter.sendMail(mailOptions);
            const result = { messageId: info.messageId, accepted: info.accepted, rejected: info.rejected, response: info.response };
            logger.info(`Password reset email sent to ${user.email}`, { user: user.username, email: user.email, result });
        } catch (error) {
            logger.error("Failed to send password reset email", { error, user: user.username, email: user.email });
            throw error;
        }
    }

    public async sendPasswordChangedNotification(user: UserDocument): Promise<void> {
        if (!this.enabled) {
            logger.warn("EmailService not configured; skipping password changed notification");
            return;
        }

        const subject = "Your LeTanki password was changed";
        const html = `
            <p>Hello ${user.username},</p>
            <p>Your LeTanki password was changed recently.</p>
            <p>If you did not make this change, please recover your account immediately through the client.</p>
        `;

        const mailOptions: nodemailer.SendMailOptions = {
            from: this.fromAddress,
            to: user.email ?? undefined,
            subject,
            html,
        };

        try {
            const info = await this.transporter.sendMail(mailOptions);
            const result = { messageId: info.messageId, accepted: info.accepted, rejected: info.rejected, response: info.response };
            logger.info(`Password change notification sent to ${user.email}`, { user: user.username, email: user.email, result });
        } catch (error) {
            logger.error("Failed to send password change notification", { error, user: user.username, email: user.email });
        }
    }

    public async sendRecoveryCode(user: UserDocument, code: string): Promise<void> {
        if (!this.enabled) {
            logger.warn("EmailService not configured; skipping recovery code email");
            return;
        }

        const subject = "LeTanki account recovery code";
        const html = `
            <p>Hello ${user.username},</p>
            <p>You requested account recovery. Use the code below to continue:</p>
            <p><strong>${code}</strong></p>
            <p>If you did not request this, please ignore this message.</p>
        `;

        const mailOptions: nodemailer.SendMailOptions = {
            from: this.fromAddress,
            to: user.email ?? undefined,
            subject,
            html,
        };

        try {
            const info = await this.transporter.sendMail(mailOptions);
            const result = { messageId: info.messageId, accepted: info.accepted, rejected: info.rejected, response: info.response };
            logger.info(`Recovery email sent to ${user.email}`, { user: user.username, email: user.email, result });
        } catch (error) {
            logger.error("Failed to send recovery email", { error, user: user.username, email: user.email });
        }
    }
}
