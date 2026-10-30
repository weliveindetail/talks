#!/usr/bin/env bash
# Check out the sources the demos were built from: LLVM and TPDE at pinned upstream commits.
# Existing checkouts are left alone. Next: scripts/docker.sh scripts/build-llvm.sh, then
# scripts/docker.sh scripts/build-tpde.sh.
set -euo pipefail
WS="$(cd "$(dirname "$0")/.." && pwd)"
LLVM_REV=0fcaf83fba58716609374be086b562e2f181a7bb   # LLVM 24.0.0git
TPDE_REV=9779acf4ada3736e779391da1e4b3369dba08024

clone_at() {   # <dir> <url> <rev>
  if [ -e "$WS/$1" ]; then
    echo "$1 exists, skipping"
    return
  fi
  git clone --filter=blob:none "$2" "$WS/$1"
  git -C "$WS/$1" checkout --detach "$3"
}

clone_at llvm-project https://github.com/llvm/llvm-project.git "$LLVM_REV"
clone_at tpde https://github.com/tpde2/tpde.git "$TPDE_REV"
git -C "$WS/tpde" submodule update --init --recursive
