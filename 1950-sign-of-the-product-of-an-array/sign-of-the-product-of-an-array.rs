impl Solution {
    pub fn array_sign(nums: Vec<i32>) -> i32 {
        nums.iter().fold(1, |acc, &x| {
            if x == 0 {
                return 0;
            } else if x < 0 {
                -acc
            } else {
                acc
            }
        })
    }
}
