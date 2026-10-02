FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    autoconf automake bc bison build-essential ca-certificates cmake cpio curl gcc-riscv64-linux-gnu libc6-dev-riscv64-cross linux-libc-dev-riscv64-cross \
    device-tree-compiler dosfstools e2fsprogs file flex git \
    ffmpeg gettext gperf libelf-dev libncurses-dev libssl-dev libtool mtools ninja-build parted \
    pkg-config python-is-python3 python3 python3-jinja2 python3-pip \
    python3-setuptools ripgrep rsync texinfo unzip u-boot-tools wget xxd xz-utils zip zstd \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /work

