#!/bin/bash

rm -r out
export ARCH=arm64
export KBUILD_BUILD_USER="Sonal"
export KBUILD_BUILD_HOST="FiredragonKing"

export CROSS_COMPILE=/home/ubuntu/ether/gcc64/bin/aarch64-linux-android-
export CROSS_COMPILE_ARM32=/home/ubuntu/ether/gcc32/bin/arm-linux-androideabi-

clear
make clean
make mrproper
mkdir out
make -C $(pwd) O=out etherious_defconfig
make -j$(nproc --all) O=out

echo "Done"
