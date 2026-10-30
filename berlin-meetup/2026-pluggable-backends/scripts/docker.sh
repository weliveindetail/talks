#!/usr/bin/env bash
# Run a command (default: shell) in the build container with the workspace
# mounted at the identical path, so build-tree paths are valid on the host too.
set -euo pipefail
WS="$(cd "$(dirname "$0")/.." && pwd)"
IMAGE=berlinllvm-dev
if ! docker image inspect "$IMAGE" >/dev/null 2>&1; then
  docker build -q -t "$IMAGE" "$WS/docker" >/dev/null
fi
TTY=(--init); [ -t 0 ] && TTY+=(-it)
exec docker run --rm "${TTY[@]}" \
  -v "$WS:$WS" -w "$WS" \
  -e CCACHE_DIR="$WS/.ccache" -e CCACHE_BASEDIR="$WS" -e CCACHE_MAXSIZE=30G \
  "$IMAGE" "${@:-bash}"
