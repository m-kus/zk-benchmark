#![no_std]

extern crate alloc;
use alloc::vec::Vec;

use mmtokens::TokenCode;

pub type Input = (Vec<TokenCode>, u32, Option<TokenCode>);

pub type Output = Vec<TokenCode>;
