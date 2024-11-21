use alloc::vec::Vec;
use core::{mem, ops::Index};

use mmtokens::TokenCode;

/// A map backed by a vector.
#[derive(Debug)]
pub struct VecMap<V> {
    data: Vec<Option<V>>
}

impl<V> Default for VecMap<V> {
    fn default() -> Self {
        Self { data: Vec::new() }
    }
}

impl<V> VecMap<V> {
    pub fn new() -> Self {
        VecMap { data: Vec::new() }
    }

    pub fn clear(&mut self) {
        self.data.clear()
    }

    pub fn with_capacity(capacity: usize) -> Self {
        VecMap { data: Vec::with_capacity(capacity)}
    }

    pub fn insert(&mut self, key: TokenCode, value: V) {
        let ix: usize = key.into();
        if self.data.len() <= ix {
            self.data.resize_with(ix, || {None});
            self.data.push(Some(value))
        } else {
            self.data[ix] = Some(value)
        }
    }

    pub fn get(&self, key: TokenCode) -> Option<&V> {
        match self.data.get(key as usize) {
            Some(Some(v)) => Some(v),
            _ => None
        }
    }
}

impl<'a,T: ?Sized> VecMap<&'a T> {
    pub fn recycle<'b>(self) -> VecMap<&'b T> {
        let old = mem::ManuallyDrop::new(self.data);
        let recycled_vec = {
            let ptr: *mut Option<&'b T> = old.as_ptr() as _;
            unsafe { Vec::from_raw_parts(ptr, old.len(), old.capacity())}
        };
        VecMap { data: recycled_vec }
    }
}

impl<V> Index<TokenCode> for VecMap<V> {
    type Output = V;

    fn index(&self, index: TokenCode) -> &Self::Output {
        &self.data[index as usize].as_ref().unwrap()
    }
}

#[cfg(test)]
mod test {
    use super::*;

    #[test]
    fn vecmap1() {
        let mut m: VecMap<TokenCode> = VecMap::new();
        assert!(m.get(0) == None);
        assert!(m.get(10) == None);
        m.insert(3,3);
        assert!(m.get(3) == Some(&3));
        assert!(m.get(0) == None);
        assert!(m.get(10) == None);
        m.insert(1,1);
        assert!(m.get(3) == Some(&3));
        assert!(m.get(1) == Some(&1));
        assert!(m.get(0) == None);
        assert!(m.get(10) == None);
    }

    #[test]
    fn vecmap2() {
        let mut m: VecMap<TokenCode> = VecMap::with_capacity(20);
        assert!(m.get(0) == None);
        assert!(m.get(10) == None);
        m.insert(3,3);
        assert!(m.get(3) == Some(&3));
        assert!(m.get(0) == None);
        assert!(m.get(10) == None);
        m.insert(1,1);
        assert!(m.get(3) == Some(&3));
        assert!(m.get(1) == Some(&1));
        assert!(m.get(0) == None);
        assert!(m.get(10) == None);
    }
}