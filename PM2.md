# Running with PM2

This project can be run under PM2 to keep it alive after your SSH session ends.

Recommended: run the launcher `start.js` under PM2 so the existing restart logic and env plumbing are preserved.

Quick start:

1. Install pm2 globally (if not installed):

```bash
npm install -g pm2
```

2. From the project root, start using the ecosystem file:

```bash
pm2 start ecosystem.config.js
```

This will run `start.js` (which itself spawns the `ts-node` child used by the project). PM2 supervises the launcher and will restart it on crash or machine reboot if you save the process list.

3. Save the process list so PM2 restarts on boot:

```bash
pm2 save
pm2 startup
# Follow the printed instructions to enable startup on your platform
```

Alternative: start directly with `npm start` under PM2:

```bash
pm2 start npm --name letankiserver -- start
```

Notes:
- `start.js` already implements a scheduled auto-restart (24 hours). When running under PM2 the launcher remains the top-level process.
- To view logs:

```bash
pm2 logs letankiserver
```

- To stop:

```bash
pm2 stop letankiserver
```

- To restart manually:

```bash
pm2 restart letankiserver
```

If you want, I can also add an npm script that runs PM2 commands or a systemd unit instead of PM2. Let me know your preference.