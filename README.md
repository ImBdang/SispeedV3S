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
    sudo apt install -y libgnutls28-dev \
    cpio
```

Thiết lập môi trường

```text
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
```

## Tài liệu

Toàn bộ ghi chép và tài liệu cần học sẽ nằm trong folder docs/

## Sources

Tiếp theo là sẽ tải sources của U-boot/Kernel/Rootfs nhé

Ở đây mình sử dụng:
- U-boot v2026.07-rc5
- Kernel v6.12
- BusyBox 1_36_1

Mình sẽ để file fetch_sources.sh để fetch sources về project dễ dàng hơn.

```text
chmod +x ./fetch_sources.sh
./fetch_sources.sh
```
## Build

```bash
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
```

```bash
cd sources/u-boot
make LicheePi_Zero_defconfig
make -j$(nproc)
```

```bash
cd ../linux
make sunxi_defconfig
make -j$(nproc) zImage dtbs
```

Đối với busybox chúng ta sẽ mở comment static build, để tránh busybox copy thêm thư viện libc vào rootfs. Giúp mọi thứ đơn giản hơn để nhìn thấy cốt lõi của nó

```bash
cd ../busybox
make defconfig
sed -i 's/# CONFIG_STATIC is not set/CONFIG_STATIC=y/' .config
make -j$(nproc)
make CONFIG_PREFIX=../../rootfs install
```