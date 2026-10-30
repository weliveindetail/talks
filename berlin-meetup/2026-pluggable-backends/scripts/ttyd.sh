#!/usr/bin/env bash
# Serve a writable terminal for the demo slides on http://localhost:7681.
# Bound to loopback only (lo0): this is a full shell, don't expose it.
# Each terminal slide picks a tmux session via ?arg=<name> (scripts/ttyd-session.sh); clients
# with the same name share it, so the main slide mirrors the presenter view. Sessions survive
# ttyd restarts; `tmux -L berlinllvm kill-server` resets all of them.
set -euo pipefail
WS="$(cd "$(dirname "$0")/.." && pwd)"
exec ttyd -W -a -i lo0 -p "${PORT:-7681}" -w "$WS" \
  -t fontSize="${FONT_SIZE:-13}" \
  -t disableLeaveAlert=true \
  -t rendererType=dom \
  -t 'theme={"background":"#1e1e1e","foreground":"#f1f3f5","cursor":"#ffec99"}' \
  "$WS/scripts/ttyd-session.sh"
