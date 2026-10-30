#!/usr/bin/env bash
# Demo 3: TPDE as a backend plugin in clang.
# Run from anywhere on the host; re-executes itself inside the build container.
set -euo pipefail
WS="$(cd "$(dirname "$0")/.." && pwd)"
if [ ! -f /.dockerenv ]; then
  exec "$WS/scripts/docker.sh" "$WS/demo/demo3.sh" "$@"
fi
cd "$WS"

export PATH="$WS/build/llvm/bin:$PATH"
cd demo   # tpde-plugin.so is a symlink to build/tpde/tpde-llvm/tpde-plugin.so
set -x

# TPDE writes the object; -Werror makes a fallback to LLVM fail the build
clang -O0 -c -fpass-plugin=./tpde-plugin.so -Werror=backend-plugin hello.c -o hello.o
clang -fuse-ld=lld hello.o -o hello && ./hello && echo "exit $?"

# no asm: a hard error, not a fallback
clang -O0 -S -fpass-plugin=./tpde-plugin.so hello.c -o /dev/null || true

# unsupported IR (half): warning, then LLVM's backend takes over
clang -O0 -c -fpass-plugin=./tpde-plugin.so half.c -o half.o
