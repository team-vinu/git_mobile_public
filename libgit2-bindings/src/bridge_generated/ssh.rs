#![allow(
    non_camel_case_types,
    unused,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::double_parens,
    non_snake_case
)]
// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`.

use crate::ssh::*;
use flutter_rust_bridge::*;

// Section: imports

// Section: wire functions

#[no_mangle]
pub extern "C" fn wire_ssh_keygen(port_: i64, passwd: *mut wire_uint_8_list, algorithm: i32) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "ssh_keygen",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_passwd = passwd.wire2api();
            let api_algorithm = algorithm.wire2api();
            move |task_callback| Ok(ssh_keygen(api_passwd, api_algorithm))
        },
    )
}

// Section: wire structs

#[repr(C)]
#[derive(Clone)]
pub struct wire_uint_8_list {
    ptr: *mut u8,
    len: i32,
}

// Section: wrapper structs

// Section: static checks

// Section: allocate functions

#[no_mangle]
pub extern "C" fn new_uint_8_list_2(len: i32) -> *mut wire_uint_8_list {
    let ans = wire_uint_8_list {
        ptr: support::new_leak_vec_ptr(Default::default(), len),
        len,
    };
    support::new_leak_box_ptr(ans)
}

// Section: impl Wire2Api

pub trait Wire2Api<T> {
    fn wire2api(self) -> T;
}

impl<T, S> Wire2Api<Option<T>> for *mut S
where
    *mut S: Wire2Api<T>,
{
    fn wire2api(self) -> Option<T> {
        if self.is_null() {
            None
        } else {
            Some(self.wire2api())
        }
    }
}

impl Wire2Api<String> for *mut wire_uint_8_list {
    fn wire2api(self) -> String {
        let vec: Vec<u8> = self.wire2api();
        String::from_utf8_lossy(&vec).into_owned()
    }
}

impl Wire2Api<Algorithm> for i32 {
    fn wire2api(self) -> Algorithm {
        match self {
            0 => Algorithm::Rsa,
            1 => Algorithm::Dsa,
            2 => Algorithm::Ed25519,
            _ => unreachable!("Invalid variant for Algorithm: {}", self),
        }
    }
}

impl Wire2Api<i32> for i32 {
    fn wire2api(self) -> i32 {
        self
    }
}

impl Wire2Api<u8> for u8 {
    fn wire2api(self) -> u8 {
        self
    }
}

impl Wire2Api<Vec<u8>> for *mut wire_uint_8_list {
    fn wire2api(self) -> Vec<u8> {
        unsafe {
            let wrap = support::box_from_leak_ptr(self);
            support::vec_from_leak_ptr(wrap.ptr, wrap.len)
        }
    }
}

// Section: impl NewWithNullPtr

pub trait NewWithNullPtr {
    fn new_with_null_ptr() -> Self;
}

impl<T> NewWithNullPtr for *mut T {
    fn new_with_null_ptr() -> Self {
        std::ptr::null_mut()
    }
}

// Section: impl IntoDart

impl support::IntoDart for KeyPair {
    fn into_dart(self) -> support::DartCObject {
        vec![self.pubkey.into_dart(), self.privkey.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for KeyPair {}

// Section: executor

support::lazy_static! {
    pub static ref FLUTTER_RUST_BRIDGE_HANDLER: support::DefaultHandler = Default::default();
}
