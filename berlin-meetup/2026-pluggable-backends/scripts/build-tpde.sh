#!/usr/bin/env bash
# Configure + build TPDE (incl. tpde-plugin.so) against our LLVM build tree.
set -euo pipefail
WS="$(cd "$(dirname "$0")/.." && pwd)"
L="$WS/build/llvm"
B="$WS/build/tpde"
if [ ! -f "$B/build.ninja" ]; then
  cmake -G Ninja -S "$WS/tpde" -B "$B" \
    -DCMAKE_BUILD_TYPE=Release \
    -DTPDE_TARGETS=aarch64 -DTPDE_INCLUDE_TESTS=OFF -DTPDE_LINK_LLVM_STATIC=ON \
    -DLLVM_DIR="$L/lib/cmake/llvm" \
    -DCMAKE_C_COMPILER="$L/bin/clang" -DCMAKE_CXX_COMPILER="$L/bin/clang++" \
    -DCMAKE_C_COMPILER_LAUNCHER=ccache -DCMAKE_CXX_COMPILER_LAUNCHER=ccache \
    -DCMAKE_EXE_LINKER_FLAGS=-fuse-ld=lld -DCMAKE_SHARED_LINKER_FLAGS=-fuse-ld=lld \
    -DCMAKE_MODULE_LINKER_FLAGS=-fuse-ld=lld \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
fi
ninja -C "$B" -j "${JOBS:-8}" "$@"
