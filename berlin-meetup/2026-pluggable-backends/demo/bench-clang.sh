#!/usr/bin/env bash
# Demo 4: compile time, LLVM -O0 vs TPDE.
# Run from anywhere on the host; re-executes itself inside the build container.
# WORKLOAD=<file.c> picks the translation unit to compile (default: hello.c).
set -euo pipefail
WS="$(cd "$(dirname "$0")/.." && pwd)"
if [ ! -f /.dockerenv ]; then
  exec "$WS/scripts/docker.sh" env WORKLOAD="${WORKLOAD:-}" "$WS/demo/$(basename "$0")" "$@"
fi
cd "$WS"

export PATH="$WS/build/llvm/bin:$PATH"
cd demo   # tpde-plugin.so is a symlink to build/tpde/tpde-llvm/tpde-plugin.so
W="${WORKLOAD:-hello.c}"
set -x

hyperfine -N -w 3 \
  "clang -O0 -c $W -o /dev/null" \
  "clang -O0 -c -fpass-plugin=./tpde-plugin.so $W -o /dev/null"
