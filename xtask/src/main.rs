use std::env;
use std::path::Path;
use std::process::Command;

fn code_gen(pwd: &String, llvm: Option<&String>) {
    let mut codegen = Command::new("flutter_rust_bridge_codegen");
    let rust_output_dir = format!("{}/libgit2-bindings/src/bridge_generated", &pwd);
    let rust_outputs = [
        format!("{}/api.rs", &rust_output_dir),
        format!("{}/git.rs", &rust_output_dir),
        format!("{}/ssh.rs", &rust_output_dir),
    ];

    if !Path::new(&rust_output_dir).exists() {
        std::fs::create_dir_all(&rust_output_dir).unwrap();
    }

    for output in &rust_outputs {
        let file = Path::new(&output);
        if !file.exists() {
            std::fs::File::create(&file).unwrap();
        }
    }

    codegen.arg("--rust-input");
    codegen.args([
        format!("{}/libgit2-bindings/src/api.rs", &pwd),
        format!("{}/libgit2-bindings/src/git.rs", &pwd),
        format!("{}/libgit2-bindings/src/ssh.rs", &pwd),
    ]);
    codegen.arg("--dart-output");
    codegen.args([
        format!("{}/lib/bridge_generated/api.dart", &pwd),
        format!("{}/lib/bridge_generated/git.dart", &pwd),
        format!("{}/lib/bridge_generated/ssh.dart", &pwd),
    ]);
    codegen.arg("--rust-output");
    codegen.args(&rust_outputs);
    codegen.arg("--class-name");
    codegen.args(["ApiPlatform", "ApiGit", "ApigSsh"]);
    codegen.arg("--c-output");
    codegen.arg(format!("{}/ios/Runner/bridge_generated.h", &pwd));
    codegen.arg("--skip-add-mod-to-lib");

    if llvm.is_some() {
        codegen.args(["--llvm-path", &llvm.unwrap()]);
    } else {
        #[cfg(target_os = "macos")]
        codegen.args(["--llvm-path", "/opt/homebrew/opt/llvm"]);
    }

    codegen.spawn().expect("failed to gen").wait().unwrap();
}

fn flutter_run(device: Option<&String>) {
    #[allow(non_snake_case)]
    let AARCH64_APPLE_IOS_SIM_OPENSSL_DIR = "$PWD/openssl/aarch64_ios";
    #[allow(non_snake_case)]
    let AARCH64_APPLE_IOS_SIM_OPENSSL_INCLUDE_DIR = "${AARCH64_APPLE_IOS_SIM_OPENSSL_DIR}/include";
    #[allow(non_snake_case)]
    let AARCH64_APPLE_IOS_SIM_OPENSSL_LIB_DIR = "${AARCH64_APPLE_IOS_SIM_OPENSSL_DIR}/lib";
    #[allow(non_snake_case)]
    let X86_64_LINUX_ANDROID_OPENSSL_DIR = "$PWD/openssl/x86_64_android";
    #[allow(non_snake_case)]
    let X86_64_LINUX_ANDROID_OPENSSL_INCLUDE_DIR = "$X86_64_LINUX_ANDROID_OPENSSL_DIR/include";
    #[allow(non_snake_case)]
    let X86_64_LINUX_ANDROID_OPENSSL_LIB_DIR = "$X86_64_LINUX_ANDROID_OPENSSL_DIR/lib";
    #[allow(non_snake_case)]
    let I686_LINUX_ANDROID_OPENSSL_DIR = "$PWD/openssl/i686-android";
    #[allow(non_snake_case)]
    let I686_LINUX_ANDROID_OPENSSL_INCLUDE_DIR = "$I686_LINUX_ANDROID_OPENSSL_DIR/include";
    #[allow(non_snake_case)]
    let I686_LINUX_ANDROID_OPENSSL_LIB_DIR = "$I686_LINUX_ANDROID_OPENSSL_DIR/lib";
    env::set_var(
        "AARCH64_APPLE_IOS_SIM_OPENSSL_DIR",
        AARCH64_APPLE_IOS_SIM_OPENSSL_DIR,
    );
    env::set_var(
        "AARCH64_APPLE_IOS_SIM_OPENSSL_INCLUDE_DIR",
        AARCH64_APPLE_IOS_SIM_OPENSSL_INCLUDE_DIR,
    );
    env::set_var(
        "AARCH64_APPLE_IOS_SIM_OPENSSL_LIB_DIR",
        AARCH64_APPLE_IOS_SIM_OPENSSL_LIB_DIR,
    );
    env::set_var(
        "X86_64_LINUX_ANDROID_OPENSSL_DIR",
        X86_64_LINUX_ANDROID_OPENSSL_DIR,
    );
    env::set_var(
        "X86_64_LINUX_ANDROID_OPENSSL_INCLUDE_DIR",
        X86_64_LINUX_ANDROID_OPENSSL_INCLUDE_DIR,
    );
    env::set_var(
        "X86_64_LINUX_ANDROID_OPENSSL_LIB_DIR",
        X86_64_LINUX_ANDROID_OPENSSL_LIB_DIR,
    );
    env::set_var(
        "I686_LINUX_ANDROID_OPENSSL_DIR",
        I686_LINUX_ANDROID_OPENSSL_DIR,
    );
    env::set_var(
        "I686_LINUX_ANDROID_OPENSSL_INCLUDE_DIR",
        I686_LINUX_ANDROID_OPENSSL_INCLUDE_DIR,
    );
    env::set_var(
        "I686_LINUX_ANDROID_OPENSSL_LIB_DIR",
        I686_LINUX_ANDROID_OPENSSL_LIB_DIR,
    );

    let mut fvm = Command::new("fvm");
    let mut flutter = Command::new("flutter");
    let args = match device {
        Some(dev) => vec!["run".to_string(), "-d".to_string(), format!("{}", &dev)],
        None => vec!["run".to_string()],
    };
    match fvm.arg("flutter").args(&args).spawn() {
        Ok(mut f) => {
            f.wait().unwrap();
        }
        Err(_) => {
            flutter
                .args(&args)
                .spawn()
                .expect("there are no fvm or flutter.")
                .wait()
                .unwrap();
        }
    }
}

fn main() {
    let pwd = env::var("PWD").unwrap();

    let args: Vec<String> = std::env::args().collect();

    match args.get(1).expect("not enough arguments").as_str() {
        "gen" => {
            code_gen(&pwd, args.get(2));
        }
        "flutter" => {
            flutter_run(args.get(2));
        }
        &_ => panic!("Unexpected arguments!"),
    }
}
