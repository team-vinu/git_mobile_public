use ssh_key::{rand_core, PrivateKey};

#[repr(C)]
pub struct KeyPair {
    pub pubkey: Vec<u8>,
    pub privkey: Vec<u8>,
}

#[repr(C)]
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
