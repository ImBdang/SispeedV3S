# Học Embedded Linux và Kernel driver, vì một Việt Nam hùng cường

Đây là repo chứa tài liệu và source cùng với diary trong quá trình học embedded linux trên baord Lichee Zero V3s.

Repo này được thực hành trên máy Host Ubuntu 22.04, sử dụng toolchain do Ubuntu cung cấp

## Setup

Cài đặt

```text
sudo apt update
sudo apt install -y \
    git build-essential \
    gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf \
    flex bison bc libssl-dev libelf-dev libncurses-dev \
    device-tree-compiler u-boot-tools \
    python3 python3-pyelftools \
    cpio
```

Thiết lập môi trường

```text
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
```

## Tài liệu

Toàn bộ ghi chép và tài liệu cần học sẽ nằm trong folder docs/
