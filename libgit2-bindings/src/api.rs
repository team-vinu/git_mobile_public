use ssh_key::{rand_core, PrivateKey};
use std::path::Path;

pub struct KeyPair {
    pub pubkey: Vec<u8>,
    pub privkey: Vec<u8>,
}

pub enum Algorithm {
    Rsa,
    Dsa,
    Ed25519,
}

pub fn ssh_keygen(passwd: Option<String>, algorithm: Algorithm) -> Option<KeyPair> {
    let unencrypted_privkey = match algorithm {
        Algorithm::Rsa => PrivateKey::random(
            &mut rand_core::OsRng,
            ssh_key::Algorithm::Rsa {
                hash: Some(ssh_key::HashAlg::Sha256),
            },
        ),
        Algorithm::Dsa => PrivateKey::random(&mut rand_core::OsRng, ssh_key::Algorithm::Dsa),
        Algorithm::Ed25519 => {
            PrivateKey::random(&mut rand_core::OsRng, ssh_key::Algorithm::Ed25519)
        }
    };
    let unencrypted_privkey = match unencrypted_privkey {
        Ok(key) => key,
        Err(_) => return None,
    };

    let pubkey = unencrypted_privkey.public_key();
    if passwd.is_some() {
        let encrypted_privkey =
            match unencrypted_privkey.encrypt(&mut rand_core::OsRng, &passwd.unwrap().as_str()) {
                Ok(key) => key,
                Err(_) => return None,
            };
        return Some(KeyPair {
            pubkey: match pubkey.to_bytes() {
                Ok(key) => key.to_vec(),
                Err(_) => return None,
            },
            privkey: match encrypted_privkey.to_bytes() {
                Ok(key) => key.to_vec(),
                Err(_) => return None,
            },
        });
    }

    Some(KeyPair {
        pubkey: match pubkey.to_bytes() {
            Ok(key) => key.to_vec(),
            Err(_) => return None,
        },
        privkey: match unencrypted_privkey.to_bytes() {
            Ok(key) => key.to_vec(),
            Err(_) => return None,
        },
    })
}

pub fn git_https_clone(dir: String, url: String) -> String {
    match git2::Repository::clone(&url, Path::new(&dir)) {
        Ok(_) => "Cloned successfully".to_string(),
        Err(err) => return format!("Failed to clone: {}", err),
    }
}

pub fn git_http_clone(dir: String, url: String) -> String {
    let mut cbs = git2::RemoteCallbacks::new();
    cbs.certificate_check(|_crt, _str| true);
    let mut fetch_opts = git2::FetchOptions::new();
    fetch_opts.remote_callbacks(cbs);
    let mut builder = git2::build::RepoBuilder::new();
    builder.fetch_options(fetch_opts);

    match builder.clone(&url, Path::new(&dir)) {
        Ok(_) => "Cloned successfully".to_string(),
        Err(err) => return format!("Failed to clone: {}", err),
    }
}

pub fn git_add(dir: String, file: String) -> String {
    let repo = match git2::Repository::open(Path::new(&dir)) {
        Ok(r) => r,
        Err(err) => return format!("{:?}", err),
    };

    match repo.index() {
        Ok(mut index) => match index.add_path(Path::new(&file)) {
            Ok(_) => "Added to index successfully!".to_string(),
            Err(err) => return format!("{:?}", err),
        },
        Err(err) => return format!("{:?}", err),
    }
}

pub fn git_commit(dir: String, msg: String) -> String {
    let repo = match git2::Repository::open(Path::new(&dir)) {
        Ok(r) => r,
        Err(err) => return format!("Cannot open the repository: {:?}", err),
    };
    let sign = match git2::Signature::now("Example", "example@example.com") {
        Ok(sig) => sig,
        Err(err) => return format!("{:?}", err),
    };
    let head_commit = match repo.resolve_reference_from_short_name("HEAD^") {
        Ok(r) => match r.peel_to_commit() {
            Ok(c) => c,
            Err(err) => return format!("{:?}", err),
        },
        Err(err) => return format!("{:?}", err),
    };
    let tree = match head_commit.tree() {
        Ok(t) => t,
        Err(err) => return format!("{:?}", err),
    };

    match repo.commit(Some("HEAD"), &sign, &sign, msg.as_str(), &tree, &[]) {
        Ok(_) => "Commited successfully.".to_string(),
        Err(_) => "Failed to commit.".to_string(),
    }
}

pub fn git_init(dir: String) -> String {
    match git2::Repository::init(Path::new(&dir)) {
        Ok(_) => "Initialized successfully!".to_string(),
        Err(err) => format!("{:?}", err),
    }
}

pub fn git_open(dir: String) -> String {
    match git2::Repository::open(Path::new(&dir)) {
        Ok(_) => "Opened successfully!".to_string(),
        Err(err) => format!("{:?}", err),
    }
}

// This is the entry point of your Rust library.
// When adding new code to your project, note that only items used
// here will be transformed to their Dart equivalents.

// A plain enum without any fields. This is similar to Dart- or C-style enums.
// flutter_rust_bridge is capable of generating code for enums with fields
// (@freezed classes in Dart and tagged unions in C).
pub enum Platform {
    Unknown,
    Android,
    Ios,
    Unix,
}

// A function definition in Rust. Similar to Dart, the return type must always be named
// and is never inferred.
pub fn platform() -> Platform {
    // This is a macro, a special expression that expands into code. In Rust, all macros
    // end with an exclamation mark and can be invoked with all kinds of brackets (parentheses,
    // brackets and curly braces). However, certain conventions exist, for example the
    // vector macro is almost always invoked as vec![..].
    //
    // The cfg!() macro returns a boolean value based on the current compiler configuration.
    // When attached to expressions (#[cfg(..)] form), they show or hide the expression at compile time.
    // Here, however, they evaluate to runtime values, which may or may not be optimized out
    // by the compiler. A variety of configurations are demonstrated here which cover most of
    // the modern oeprating systems. Try running the Flutter application on different machines
    // and see if it matches your expected OS.
    //
    // Furthermore, in Rust, the last expression in a function is the return value and does
    // not have the trailing semicolon. This entire if-else chain forms a single expression.
    if cfg!(target_os = "android") {
        Platform::Android
    } else if cfg!(target_os = "ios") {
        Platform::Ios
    } else if cfg!(unix) {
        Platform::Unix
    } else {
        Platform::Unknown
    }
}

// The convention for Rust identifiers is the snake_case,
// and they are automatically converted to camelCase on the Dart side.
pub fn rust_release_mode() -> bool {
    cfg!(not(debug_assertions))
}
