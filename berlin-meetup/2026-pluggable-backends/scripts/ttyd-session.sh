#!/usr/bin/env bash
# Started by ttyd for each client: attach to (or create) the tmux session named by the URL
# argument, e.g. http://localhost:7681/?arg=demo1. Clients with the same name share a shell.
# The name comes from the browser, so only plain names are accepted.
set -euo pipefail
WS="$(cd "$(dirname "$0")/.." && pwd)"
NAME="${1:-demo}"
[[ "$NAME" =~ ^[A-Za-z0-9_-]{1,32}$ ]] || NAME=demo
exec tmux -L "${TMUX_SOCKET:-berlinllvm}" -f "$WS/scripts/tmux.conf" \
  new-session -A -s "$NAME" -c "$WS" env PS1="%F{yellow}$%f " zsh -f
