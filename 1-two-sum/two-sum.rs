use std::collections::HashMap;

impl Solution {
    pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
     let mut nums_map = HashMap::new();
     for (i, &num) in nums.iter().enumerate() {
         match nums_map.get(&(target - num)) {
             Some(&index) => return vec![index as i32, i as i32],
             None => nums_map.insert(num, i)
         };
     }   
     vec![]
    }
}