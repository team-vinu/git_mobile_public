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
        --c-output "$REPO_DIR/ios/Classes/bridge_generated.h" \
        # --c-output "$REPO_DIR/macos/Classes/bridge_generated.h"
    # Uncomment this line to invoke build_runner as well
    # fvm flutter pub run build_runner build

OPENSSLDIR := "$PWD/openssl-1.1.1p"

run:
    export X86_64_LINUX_ANDROID_OPENSSL_DIR="{{OPENSSLDIR}}/x86_64_android"; \
    export X86_64_LINUX_ANDROID_OPENSSL_INCLUDE_DIR="$X86_64_LINUX_ANDROID_OPENSSL_DIR/include"; \
    export X86_64_LINUX_ANDROID_OPENSSL_LIB_DIR="$X86_64_LINUX_ANDROID_OPENSSL_DIR/lib"; \
    fvm flutter run

lint:
    cd native && cargo fmt
    dart format .

clean:
    flutter clean
    cargo clean

# vim:expandtab:sw=4:ts=4
