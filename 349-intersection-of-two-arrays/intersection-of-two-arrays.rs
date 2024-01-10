use std::collections::HashSet;

impl Solution {
    pub fn intersection(nums1: Vec<i32>, nums2: Vec<i32>) -> Vec<i32> {
        let nums2_set = nums2.into_iter().collect::<HashSet<i32>>();
        nums1
            .into_iter()
            .filter(|e| nums2_set.contains(e))
            .collect::<HashSet<i32>>()
            .into_iter()
            .collect()
    }
}