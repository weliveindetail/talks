# Linux/arm64 toolchain for building LLVM + TPDE (TPDE only targets ELF).
FROM ubuntu:24.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
      build-essential clang lld cmake ninja-build python3 python3-pip \
      ccache git ca-certificates file less vim zlib1g-dev libzstd-dev \
      hyperfine time \
    && rm -rf /var/lib/apt/lists/*
