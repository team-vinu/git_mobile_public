use clap::{App, Arg};
use std::env;
use std::process::Command;

fn cargo_ndk(target: &str, profile: &str, pwd: &str) {
    let mut cargo = Command::new("cargo");
    cargo
        .arg("build")
        .arg("--package=libgit2-bindings")
        .arg(format!("--target={}", &target))
        .arg(format!("--profile={}", &profile));

    cargo
        .spawn()
        .expect("failed to spawn the command.")
        .wait()
        .unwrap();

    let mut copy = Command::new("cp");
    if profile == "dev" {
        copy.arg(format!(
            "{}/target/{}/{}/liblibgit2_bindings.a",
            &pwd, &target, "debug"
        ));
    } else {
        copy.arg(format!(
            "{}/target/{}/{}/liblibgit2_bindings.a",
            &pwd, &target, &profile
        ));
    }
    let android_ndk_dir = format!("{}/android/app/src/main/jniLibs", &pwd);
    match target {
        "i686-linux-android" => {
            let arg = format!("{}/x86", &android_ndk_dir);
            copy.arg(&arg);
            copy.spawn().expect("failed to coppy.").wait().unwrap();
            let mut ld = Command::new("i686-linux-android-ld");
            ld.arg(format!("{}/liblibgit2_bindings.a", &arg))
                .arg(format!("{}/liblibgit2_bindings.a", &arg))
                .spawn()
                .expect("failed to link")
                .wait()
                .unwrap();
        }
        "x86_64-linux-android" => {
            let arg = format!("{}/x86_64", &android_ndk_dir);
            copy.arg(&arg);
            copy.spawn().expect("failed to coppy.").wait().unwrap();
            let mut ld = Command::new("x86_64-linux-android-ld");
            ld.arg(format!("{}/liblibgit2_bindings.a", &arg))
                .arg(format!("{}/liblibgit2_bindings.a", &arg))
                .spawn()
                .expect("failed to link")
                .wait()
                .unwrap();
        }
        &_ => (),
    }
    // ld.arg("-lz -ldl -llog -lgcc -ldl -lc -lm")
}

fn main() {
    let pwd = env::var("PWD").unwrap();

    let target: Arg = Arg::new("target")
        .short('t')
        .long("target")
        .takes_value(true)
        .required(true);

    let profile: Arg = Arg::new("profile")
        .short('p')
        .long("profile")
        .takes_value(true)
        .required(true);

    let app: App = App::new("Task Runner").arg(target).arg(profile);

    match app.try_get_matches() {
        Ok(m) => {
            let target = m.value_of("target").unwrap();
            let profile = m.value_of("profile").unwrap();
            cargo_ndk(&target, &profile, &pwd);
        }
        Err(e) => {
            println!("{}", e);
        }
    }
}
