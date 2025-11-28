#/usr/bin/env bash

git clone --depth 1 https://github.com/weliveindetail/llvm-autojit-bench
mkdir -p bzip2

# callgraph regular
cp -r llvm-autojit-bench/specCPU2006/original/401.bzip2/bzip2-1.0.3 \
      bzip2/build_regular

CFLAGS="-O0 -g -flto=thin"
LDFLAGS="-fuse-ld=lld -Wl,-plugin-opt=save-temps -Wl,-plugin-opt=thinlto"
(cd bzip2/build_regular; make CC="clang-21" CFLAGS="$CFLAGS" LDFLAGS="$LDFLAGS")

llvm-link-21 bzip2/build_regular/*.precodegen.bc -o bzip2-regular.bc
opt-21 -passes=dot-callgraph bzip2-regular.bc -disable-output
dot -Tpng bzip2-regular.bc.callgraph.dot -o bzip2-regular.png

# callgraph autojit
cp -r llvm-autojit-bench/specCPU2006/original/401.bzip2/bzip2-1.0.3 \
      bzip2/build_autojit
CFLAGS="-O0 -g -fpass-plugin=$(pwd)/../lib/autojit.so -flto=thin"
LDFLAGS="-fuse-ld=lld -L /usr/local/lib -lautojit_static-x86_64 -rdynamic -Wl,-plugin-opt=save-temps -Wl,-plugin-opt=thinlto"
(cd bzip2/build_autojit; make CC="clang-21" CFLAGS="$CFLAGS" LDFLAGS="$LDFLAGS")

llvm-link-21 bzip2/build_autojit/*.precodegen.bc -o bzip2-autojit.bc
opt-21 -passes=dot-callgraph bzip2-autojit.bc -disable-output
dot -Tpng bzip2-autojit.bc.callgraph.dot -o bzip2-autojit.png
