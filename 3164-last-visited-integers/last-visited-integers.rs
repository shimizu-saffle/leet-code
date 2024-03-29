use std::collections::VecDeque;

impl Solution {
    pub fn last_visited_integers(nums: Vec<i32>) -> Vec<i32> {
        let mut seen = VecDeque::new();
        let mut ans = Vec::new();
        let mut consecutive_negatives = 0;

        for &num in nums.iter() {
            if num == -1 {
                consecutive_negatives += 1;
                if consecutive_negatives <= seen.len() {
                    ans.push(*seen.get(consecutive_negatives - 1).unwrap());
                } else {
                    ans.push(-1);
                }
            } else {
                consecutive_negatives = 0;
                seen.push_front(num);
            }
        }

        ans
    }
}
