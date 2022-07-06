#! /usr/bin/env bash

DIR="./openssl-1.1.1p"

export ANDROID_NDK_HOME="${ANDROID_SDK_ROOT}/ndk/24.0.8215888"
export NDK_TOOLCHAIN_ROOT="${ANDROID_NDK_HOME}/toolchains/llvm/prebuilt/linux-x86_64"

if [ ! -d $DIR ]; then
    wget https://www.openssl.org/source/openssl-1.1.1p.tar.gz
    tar xvf "${DIR}.tar.gz"
    rm "${DIR}.tar.gz"
fi

function emulatorx86() {
    OUTPUT_DIR="$(pwd)/${DIR}/i686-android"
    ANDROID_API="21"

    rustup target add i686-linux-android 

    if [ ! -d $OUTPUT_DIR ]; then
        cd "${DIR}"
        ARCH="android-x86" \
        CC="${NDK_TOOLCHAIN_ROOT}/bin/i686-linux-android${ANDROID_API}-clang" \
        CXX="${NDK_TOOLCHAIN_ROOT}/bin/i686-linux-android${ANDROID_API}-clang++" \
        CFLAGS="-m32" \
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

    mv "${OUTPUT_DIR}" ./openssl
    rm -r "${DIR}"

    # X86_64_LINUX_ANDROID_OPENSSL_LIB_DIR="${OUTPUT_DIR}/lib" X86_64_LINUX_ANDROID_OPENSSL_INCLUDE_DIR="${OUTPUT_DIR}/include" X86_64_LINUX_ANDROID_OPENSSL_DIR="${OUTPUT_DIR}" cargo build --release --target=x86_64-linux-android
}

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

    mv "${OUTPUT_DIR}" ./openssl
    rm -r "${DIR}"

    # X86_64_LINUX_ANDROID_OPENSSL_LIB_DIR="${OUTPUT_DIR}/lib" X86_64_LINUX_ANDROID_OPENSSL_INCLUDE_DIR="${OUTPUT_DIR}/include" X86_64_LINUX_ANDROID_OPENSSL_DIR="${OUTPUT_DIR}" cargo build --release --target=x86_64-linux-android
}

function aarch64() {
    OUTPUT_DIR="$(pwd)/${DIR}/aarch64_android"
    rustup target add aarch64-linux-android

    if [ ! -d $OUTPUT_DIR ]; then
        cd "${DIR}"
        # CFLAGS="-shared no-ssl2 no-ssl3 no-hw -fpic -ffunction-sections -funwind-tables -fstack-protector -fno-strict-aliasing" \
        ARCH=android64-aarch64 \
        ANDROID_API=21 \
        CC=${NDK_TOOLCHAIN_ROOT}/bin/aarch64-linux-android${ANDROID_API}-clang \
        CXX=${NDK_TOOLCHAIN_ROOT}/bin/aarch64-linux-android${ANDROID_API}-clang++ \
        ./config \
            ${ARCH} \
            ${CFLAGS} \
            --prefix=${OUTPUT_DIR} \
            --with-zlib-include=${NDK_TOOLCHAIN_ROOT}/sysroot/usr/include \
            --with-zlib-lib=${NDK_TOOLCHAIN_ROOT}/sysroot/usr/lib \
            zlib no-asm no-shared no-unit-test

        make
        make install_sw

        cd ..
    else
        :
    fi

    mv "${OUTPUT_DIR}" ./openssl
    rm -r "${DIR}"

    # cargo build --release --target=aarch64-linux-android
}

function armeabi-v7a() {
    OUTPUT_DIR="$(pwd)/${DIR}/armeabi-v7a_android"
    rustup target add armv7-linux-androideabi

    if [ ! -d $OUTPUT_DIR ]; then
        cd "$DIR"

        ARCH=android-armv7 \
        ANDROID_API=21 \
        CC=${NDK_TOOLCHAIN_ROOT}/bin/armv7a-linux-androideabi${ANDROID_API}-clang \
        CXX=${NDK_TOOLCHAIN_ROOT}/bin/armv7a-linux-androideabi${ANDROID_API}-clang++ \
        ./Configure \
            ${ARCH} \
            ${CFLAGS} \
            --prefix=${OUTPUT_DIR} \
            --with-zlib-include=${NDK_TOOLCHAIN_ROOT}/sysroot/usr/include \
            --with-zlib-lib=${NDK_TOOLCHAIN_ROOT}/sysroot/usr/lib \
            zlib no-asm no-shared no-unit-test

        make
        make install_sw

        cd ../
    else
        :
    fi

    mv "${OUTPUT_DIR}" ./openssl
    rm -r "${DIR}"

    # cargo build --release --target=armv7-linux-androideabi
}

if [ "$1" = "all" ]; then
    emulator
    aarch64
    emulatorx86
elif [ "$1" = "aarch64" ]; then
    aarch64
elif [ "$1" = "emulator" ]; then
    emulator
elif [ "$1" = "emulatorx86" ]; then
    emulatorx86
else
    :
fi
