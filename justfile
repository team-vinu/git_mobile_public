# Homebrew installs LLVM in a place that is not visible to ffigen.
# This explicitly specifies the place where the LLVM dylibs are kept.
llvm_path := if os() == "macos" {
    "--llvm-path /opt/homebrew/opt/llvm"
} else {
    ""
}

default: gen lint

gen:
    export REPO_DIR="$PWD"; cd /; flutter_rust_bridge_codegen {{llvm_path}} \
        --rust-input "$REPO_DIR/libgit2-bindings/src/api.rs" \
        --dart-output "$REPO_DIR/lib/bridge_generated.dart" \
        --c-output "$REPO_DIR/ios/Runner/bridge_generated.h" \
        # --c-output "$REPO_DIR/macos/Runner/bridge_generated.h"
    # Uncomment this line to invoke build_runner as well
    # fvm flutter pub run build_runner build

run:
    export X86_64_LINUX_ANDROID_OPENSSL_DIR="$PWD/openssl/x86_64_android"; \
    export X86_64_LINUX_ANDROID_OPENSSL_INCLUDE_DIR="$X86_64_LINUX_ANDROID_OPENSSL_DIR/include"; \
    export X86_64_LINUX_ANDROID_OPENSSL_LIB_DIR="$X86_64_LINUX_ANDROID_OPENSSL_DIR/lib"; \
    export I686_LINUX_ANDROID_OPENSSL_DIR="$PWD/openssl/i686-android"; \
    export I686_LINUX_ANDROID_OPENSSL_INCLUDE_DIR="$I686_LINUX_ANDROID_OPENSSL_DIR/include"; \
    export I686_LINUX_ANDROID_OPENSSL_LIB_DIR="$I686_LINUX_ANDROID_OPENSSL_DIR/lib"; \
    export AARCH64_APPLE_IOS_SIM_OPENSSL_DIR="$PWD/openssl/aarch64_ios"; \
    export AARCH64_APPLE_IOS_SIM_OPENSSL_INCLUDE_DIR="${AARCH64_APPLE_IOS_SIM_OPENSSL_DIR}/include"; \
    export AARCH64_APPLE_IOS_SIM_OPENSSL_LIB_DIR="${AARCH64_APPLE_IOS_SIM_OPENSSL_DIR}/lib"; \
    fvm flutter run -d {{device}}

lint:
    cd native && cargo fmt
    dart format .

clean:
    flutter clean
    cargo clean

# vim:expandtab:sw=4:ts=4
