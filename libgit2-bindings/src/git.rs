use std::path::Path;

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
