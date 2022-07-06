#! /usr/bin/env bash

DIR="./openssl-1.1.1p"

if [ ! -d $DIR ]; then
    wget https://www.openssl.org/source/openssl-1.1.1p.tar.gz
    tar xvf "${DIR}.tar.gz"
    rm "${DIR}.tar.gz"
fi

function aarch64() {
    OUTPUT_DIR="$(pwd)/${DIR}/aarch64_ios"

    rustup target add aarch64-apple-ios aarch64-apple-ios-sim

    if [ ! -d ${OUTPUT_DIR} ]; then
        cd "${DIR}"

        ./Configure ios64-cross --prefix=${OUTPUT_DIR}

        CROSS_COMPILE=`xcode-select --print-path`/Toolchains/XcodeDefault.xctoolchain/usr/bin/ CROSS_TOP=`xcode-select --print-path`/Platforms/iPhoneOS.platform/Developer CROSS_SDK=iPhoneOS.sdk make

        make install_sw

        cd ..
    else
        :
    fi
    AARCH64_APPLE_IOS_OPENSSL_LIB_DIR="${OUTPUT_DIR}/lib" AARCH64_APPLE_IOS_OPENSSL_INCLUDE_DIR="${OUTPUT_DIR}/include" AARCH64_APPLE_IOS_OPENSSL_DIR="${OUTPUT_DIR}" \
    cargo build --release --target=aarch64-apple-ios

    AARCH64_APPLE_IOS_SIM_OPENSSL_LIB_DIR="${OUTPUT_DIR}/lib" AARCH64_APPLE_IOS_SIM_OPENSSL_INCLUDE_DIR="${OUTPUT_DIR}/include" AARCH64_APPLE_IOS_SIM_OPENSSL_DIR="${OUTPUT_DIR}" \
    cargo build --release --target=aarch64-apple-ios-sim 
}

if [ "$1" = "all" ]; then
    aarch64
else
    :
fi
