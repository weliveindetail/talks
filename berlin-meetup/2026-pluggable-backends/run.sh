#!/usr/bin/env bash
# Set up everything on a macOS host (first run only), then start the demo terminal (ttyd) and
# the slides (Slidev) and open the slides in Chrome.
# Reentrant: every setup step is skipped when already done, and a service that is already
# listening is reused, not started twice. Ctrl-C stops only what this run started.
set -euo pipefail
cd "$(dirname "$0")"

TTYD_PORT=7681
SLIDES_PORT=3030
URL="http://localhost:$SLIDES_PORT/"

# --- Setup -------------------------------------------------------------------------------

# Host tools: ttyd + tmux for the live terminals, node for Slidev. Installed with Homebrew.
missing=()
for tool in ttyd tmux node; do
  command -v "$tool" >/dev/null || missing+=("$tool")
done
if [ ${#missing[@]} -gt 0 ]; then
  command -v brew >/dev/null || { echo "error: missing ${missing[*]}, and Homebrew isn't installed" >&2; exit 1; }
  echo "Installing ${missing[*]} with Homebrew ..."
  brew install "${missing[@]}"
fi

# Docker runs the arm64 Linux container that builds LLVM/TPDE and runs the demos.
command -v docker >/dev/null || { echo "error: Docker not found (Docker Desktop: brew install --cask docker)" >&2; exit 1; }
docker info >/dev/null 2>&1 || { echo "error: Docker isn't running, start Docker Desktop first" >&2; exit 1; }

# Sources at pinned commits, then the builds (the LLVM build takes a while the first time).
scripts/fetch-sources.sh
if [ ! -x build/llvm/bin/clang ] || [ ! -f build/llvm/lib/Bye.so ]; then
  echo "Building LLVM ..."
  scripts/docker.sh scripts/build-llvm.sh
fi
if [ ! -f build/tpde/tpde-llvm/tpde-plugin.so ]; then
  echo "Building TPDE ..."
  scripts/docker.sh scripts/build-tpde.sh
fi

[ -d slides/node_modules ] || (cd slides && npm ci)

# --- Run ---------------------------------------------------------------------------------

listening() { lsof -nP -iTCP:"$1" -sTCP:LISTEN >/dev/null 2>&1; }

pids=()
cleanup() { [ ${#pids[@]} -eq 0 ] || kill "${pids[@]}" 2>/dev/null || true; }
trap cleanup EXIT
trap 'exit 130' INT TERM

if listening $TTYD_PORT; then
  echo "ttyd already running on :$TTYD_PORT"
else
  PORT=$TTYD_PORT scripts/ttyd.sh &           # terminal for the demo slides
  pids+=($!)
fi

if listening $SLIDES_PORT; then
  echo "slides already running on :$SLIDES_PORT"
else
  (cd slides && exec npx slidev --port $SLIDES_PORT) &
  pids+=($!)
fi

for _ in $(seq 1 120); do listening $SLIDES_PORT && break; sleep 0.5; done
open -a "Google Chrome" "$URL" 2>/dev/null || open "$URL"

[ ${#pids[@]} -eq 0 ] || wait
