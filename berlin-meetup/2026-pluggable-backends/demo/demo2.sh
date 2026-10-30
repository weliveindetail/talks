#!/usr/bin/env bash
# Demo 2: the PreCodeGenCallback hook in llc and clang, with Bye's -last-words.
# Run from anywhere on the host; re-executes itself inside the build container.
set -euo pipefail
WS="$(cd "$(dirname "$0")/.." && pwd)"
if [ ! -f /.dockerenv ]; then
  exec "$WS/scripts/docker.sh" "$WS/demo/demo2.sh" "$@"
fi
cd "$WS"

export PATH="$WS/build/llvm/bin:$PATH"
cd demo   # Bye.so is a symlink to build/llvm/lib/Bye.so
[ -f hello.ll ] || clang -O1 -S -emit-llvm hello.c -o hello.ll
set -x

# callback returns false: the normal backend runs
llc -load-pass-plugin=./Bye.so hello.ll -o - | head -n 8

# callback returns true: the plugin wrote the output, the backend is skipped
llc -load-pass-plugin=./Bye.so -plugin-arg=Bye,-last-words hello.ll -o -

# object file: the plugin reports an error
llc -load-pass-plugin=./Bye.so -plugin-arg=Bye,-last-words -filetype=obj hello.ll -o /dev/null || true

# same hook in clang
clang -S -O0 -fpass-plugin=./Bye.so -mllvm -last-words hello.c -o -

clang -c -O0 -fpass-plugin=./Bye.so -mllvm -last-words hello.c -o - > /dev/null
