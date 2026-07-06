#!/usr/bin/env bash
set -e

mkdir -p sources
cd sources

if [ ! -d u-boot ]; then
    git clone --depth 1 --branch v2026.07-rc5 \
        https://github.com/u-boot/u-boot.git \
        u-boot
fi

if [ ! -d linux ]; then
    git clone --depth 1 --branch v6.12 \
        https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git \
        linux
fi

if [ ! -d busybox ]; then
    git clone --depth 1 --branch 1_36_1 \
        https://git.busybox.net/busybox \
        busybox
fi