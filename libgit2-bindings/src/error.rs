use thiserror::Error;

#[repr(C)]
#[derive(Debug, Error)]
pub enum RepoError {
    #[error("Git Error: {:?}", 0)]
    GitError(git2::Error),
    #[error("IO Error: {:?}", 0)]
    IOError(std::io::Error),
}

pub enum RepoResult {
    Ok(String),
    Err(String),
}

impl From<std::io::Error> for RepoError {
    fn from(err: std::io::Error) -> Self {
        Self::IOError(err)
    }
}

impl From<git2::Error> for RepoError {
    fn from(err: git2::Error) -> Self {
        Self::GitError(err)
    }
}
