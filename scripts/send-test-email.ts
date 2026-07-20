import "dotenv/config";
import "tsconfig-paths/register";
import { EmailService } from "@/shared/services/email.service";

async function main() {
    const to = process.env.TEST_EMAIL || "j4xstarco@gmail.com";
    const emailService = new EmailService();

    const fakeUser: any = { username: "TestUser", email: to };

    try {
        console.log(`Sending password-changed test email to ${to}`);
        await emailService.sendPasswordChangedNotification(fakeUser as any);
        console.log("Sent (or attempted) password-changed test email.");

        console.log(`Sending recovery code test email to ${to}`);
        await emailService.sendRecoveryCode(fakeUser as any, "TEST-CODE-1234");
        console.log("Sent (or attempted) recovery-code test email.");
    } catch (err: any) {
        console.error("Error sending test email:", err && err.message ? err.message : err);
        process.exit(1);
    }
}

main();
