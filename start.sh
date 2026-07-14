#!/bin/bash
# Wrapper so pm2 can run "npm run dev" without needing someone to
# manually answer the startup menu, AND without ever closing stdin
# (the server's built-in debug console shuts the whole process down
# the moment stdin hits EOF, so we can't just pipe one line in).
#
# "tail -f /dev/null" produces an endless, empty input stream:
#   - it's not a TTY, so the startup menu auto-picks the default
#     option (1 - run servers, no rebuild) without printing/waiting
#   - it never closes, so the debug console just sits idle instead
#     of thinking stdin was closed and exiting
#
# If you need to rebuild resources/maps, run that manually and
# interactively once (ssh in, `npm run dev`, choose 2), then restart
# this script/pm2 process for normal day-to-day runs.

cd ~/server || exit 1
tail -f /dev/null | npm run dev
