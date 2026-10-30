#!/usr/bin/env bash
# Demo 1: minimal pass plugin (Bye) in opt and clang.
# Run from anywhere on the host; re-executes itself inside the build container.
# Set PAUSE=1 to wait for <Enter> before each step (for presenting).
set -euo pipefail
WS="$(cd "$(dirname "$0")/.." && pwd)"
if [ ! -f /.dockerenv ]; then
  exec "$WS/scripts/docker.sh" "$WS/demo/demo1.sh" "$@"
fi
cd "$WS"

export PATH="$WS/build/llvm/bin:$PATH"
cd demo   # Bye.so is a symlink to build/llvm/lib/Bye.so
set -x

# clang: plugin is loaded before -mllvm parsing, so its cl::opt is an ordinary option
clang -O1 -S -emit-llvm -fpass-plugin=./Bye.so -mllvm -wave-goodbye hello.c -o hello.ll

# opt/llc on main: plugin options go through -plugin-arg=<plugin>,<arg>
opt -load-pass-plugin=./Bye.so -passes=goodbye -plugin-arg=Bye,-wave-goodbye -disable-output hello.ll
