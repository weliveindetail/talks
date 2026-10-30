#!/usr/bin/env bash
# Backend-only compile time: llc -O0 with LLVM's backend vs TPDE. Without the frontend and
# process startup in the way, this shows the real impact of replacing the backend.
# Run from anywhere on the host; re-executes itself inside the build container.
# WORKLOAD=<file.bc|file.ll> picks the IR to compile, relative to the workspace root
# (default: llvm/lib/IR/Verifier.cpp at -O0, ~7900 functions, generated once into build/bench/).
# Bitcode keeps IR parsing out of the measurement, which matters for TPDE's short run.
set -euo pipefail
WS="$(cd "$(dirname "$0")/.." && pwd)"
if [ ! -f /.dockerenv ]; then
  exec "$WS/scripts/docker.sh" env WORKLOAD="${WORKLOAD:-}" "$WS/demo/$(basename "$0")" "$@"
fi
cd "$WS"

export PATH="$WS/build/llvm/bin:$PATH"
W="${WORKLOAD:-build/bench/Verifier.bc}"
if [ -z "${WORKLOAD:-}" ] && [ ! -f "$W" ]; then
  echo "Generating $W ..."
  mkdir -p "$(dirname "$W")"
  clang++ -O0 -c -emit-llvm -std=c++17 \
    -I llvm-project/llvm/include -I build/llvm/include -I build/llvm/lib/IR -I llvm-project/libc \
    llvm-project/llvm/lib/IR/Verifier.cpp -o "$W"
fi
case "$W" in /*) ;; *) W="../$W" ;; esac   # relative to demo/ from here on
cd demo   # tpde-plugin.so is a symlink to build/tpde/tpde-llvm/tpde-plugin.so

# A fallback to LLVM's backend would make the comparison meaningless: check once up front.
if llc -O0 -filetype=obj -load-pass-plugin=./tpde-plugin.so "$W" -o /dev/null 2>&1 |
     grep -q "TPDE compilation failed"; then
  echo "error: TPDE falls back to LLVM for $W, pick another workload" >&2
  exit 1
fi
set -x

hyperfine -N -w 2 \
  "llc -O0 -filetype=obj $W -o /dev/null" \
  "llc -O0 -filetype=obj -load-pass-plugin=./tpde-plugin.so $W -o /dev/null"
