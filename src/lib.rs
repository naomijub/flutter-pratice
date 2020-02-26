use std::ffi::{CStr, CString};
use std::os::raw::c_char;
#[no_mangle]
pub extern "C" fn play_once(ptr: *const c_char) -> *const c_char {
    let cstr = unsafe { CStr::from_ptr(ptr) }; 
    let hello = format!("Hello!\n {:?}", cstr);
    CString::new(hello).unwrap().as_ptr()
}
