#! /usr/bin/env bash

DIR="./openssl-1.1.1p"

export ANDROID_NDK_HOME="${ANDROID_SDK_ROOT}/ndk/24.0.8215888"
export NDK_TOOLCHAIN_ROOT="${ANDROID_NDK_HOME}/toolchains/llvm/prebuilt/linux-x86_64"

if [ ! -d $DIR ]; then
    wget https://www.openssl.org/source/openssl-1.1.1p.tar.gz
    tar xvf "${DIR}.tar.gz"
    rm "${DIR}.tar.gz"
fi

function emulator() {
    OUTPUT_DIR="$(pwd)/${DIR}/x86_64_android"
    ANDROID_API="21"

    rustup target add x86_64-linux-android 

    if [ ! -d $OUTPUT_DIR ]; then
        cd "${DIR}"
        ARCH="android64-x86_64" \
        CC="${NDK_TOOLCHAIN_ROOT}/bin/x86_64-linux-android${ANDROID_API}-clang" \
        CXX="${NDK_TOOLCHAIN_ROOT}/bin/x86_64-linux-android${ANDROID_API}-clang++" \
        ./config \
            ${ARCH} \
            ${CFLAGS} \
            --prefix=${OUTPUT_DIR} \
            --with-zlib-include=${ndk_toolchain_root}/sysroot/usr/include \
            --with-zlib-lib=${ndk_toolchain_root}/sysroot/usr/lib \
            zlib no-asm no-shared no-unit-test
        
        make
        make install_sw

        cd ..
    else
        :
    fi

    # X86_64_LINUX_ANDROID_OPENSSL_LIB_DIR="${OUTPUT_DIR}/lib" X86_64_LINUX_ANDROID_OPENSSL_INCLUDE_DIR="${OUTPUT_DIR}/include" X86_64_LINUX_ANDROID_OPENSSL_DIR="${OUTPUT_DIR}" cargo build --release --target=x86_64-linux-android
}

function aarch64() {
    OUTPUT_DIR="${DIR}/aarch64_android"
    rustup target add aarch64-linux-android

    ARCH=android
    ROID_API=21
    CC=${NDK_TOOLCHAIN_ROOT}/bin/aarch64-linux-android${ANDROID_API}-clang
    CXX=${NDK_TOOLCHAIN_ROOT}/bin/aarch64-linux-android${ANDROID_API}-clang++
    LD=${NDK_TOOLCHAIN_ROOT}/bin/aarch64-linux-android-ld
    AR=${NDK_TOOLCHAIN_ROOT}/bin/aarch64-linux-android-ar
    RANLIB=${NDK_TOOLCHAIN_ROOT}/bin/aarch64-linux-android-ranlib
    STRIP=${NDK_TOOLCHAIN_ROOT}/bin/aarch64-linux-android-strip
    CFLAGS="shared no-ssl2 no-ssl3 no-hw -fpic -ffunction-sections -funwind-tables -fstack-protector -fno-strict-aliasing"
    LDFLAGS=""

    ./Configure \
        ${ARCH} \
        ${CFLAGS} \
        --prefix=${OUTPUT_DIR} \
        --with-zlib-include=${NDK_TOOLCHAIN_ROOT}/sysroot/usr/include \
        --with-zlib-lib=${NDK_TOOLCHAIN_ROOT}/sysroot/usr/lib \
        zlib no-asm no-shared no-unit-test

    cargo build --release --target=aarch64-linux-android
}

function armeabi-v7a() {
    OUTPUT_DIR="${DIR}/armeabi-v7a_android"
    rustup target add armv7-linux-androideabi

    ARCH=android-armv7
    OID_API=16
    CC=${NDK_TOOLCHAIN_ROOT}/bin/armv7a-linux-androideabi${ANDROID_API}-clang
    CXX=${NDK_TOOLCHAIN_ROOT}/bin/armv7a-linux-androideabi${ANDROID_API}-clang++
    LD=${NDK_TOOLCHAIN_ROOT}/bin/arm-linux-androideabi-ld
    AR=${NDK_TOOLCHAIN_ROOT}/bin/arm-linux-androideabi-ar
    RANLIB=${NDK_TOOLCHAIN_ROOT}/bin/arm-linux-androideabi-ranlib
    STRIP=${NDK_TOOLCHAIN_ROOT}/bin/arm-linux-androideabi-strip
    CFLAGS="-mfloat-abi=softfp -mfpu=vfpv3-d16 -mthumb -mfpu=neon -fpic -ffunction-sections -funwind-tables -fstack-protector -fno-strict-aliasing"
    LDFLAGS="-Wl,--fix-cortex-a8"

    ./Configure \
        ${ARCH} \
        ${CFLAGS} \
        --prefix=${OUTPUT_DIR} \
        --with-zlib-include=${NDK_TOOLCHAIN_ROOT}/sysroot/usr/include \
        --with-zlib-lib=${NDK_TOOLCHAIN_ROOT}/sysroot/usr/lib \
        zlib no-asm no-shared no-unit-test

    cargo build --release --target=armv7-linux-androideabi
}

if [ "$1" = "all" ]; then
    emulator
else
    :
fi
