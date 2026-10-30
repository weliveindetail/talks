#!/usr/bin/env bash
# Configure + build LLVM/Clang/LLD (Release, AArch64 only). Run inside container.
set -euo pipefail
WS="$(cd "$(dirname "$0")/.." && pwd)"
B="$WS/build/llvm"
if [ ! -f "$B/build.ninja" ]; then
  cmake -G Ninja -S "$WS/llvm-project/llvm" -B "$B" \
    -DCMAKE_BUILD_TYPE=Release \
    -DLLVM_ENABLE_ASSERTIONS=OFF \
    -DLLVM_ENABLE_PROJECTS="clang;lld" \
    -DLLVM_TARGETS_TO_BUILD=AArch64 \
    -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ \
    -DLLVM_USE_LINKER=lld \
    -DLLVM_CCACHE_BUILD=ON \
    -DLLVM_PARALLEL_LINK_JOBS=2 \
    -DLLVM_ENABLE_PLUGINS=ON \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
fi
ninja -C "$B" -j "${JOBS:-8}" "${@:-all}"
ninja -C "$B" -j "${JOBS:-8}" Bye
