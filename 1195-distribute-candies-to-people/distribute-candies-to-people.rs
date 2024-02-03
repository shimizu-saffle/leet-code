impl Solution {
    pub fn distribute_candies(candies: i32, num_people: i32) -> Vec<i32> {
        let mut remain_candies = candies;
        let mut distribution_count = 1;
        let mut current_index = 0;
        let mut result = vec![0; num_people as usize];

        while remain_candies > 0 {
            if remain_candies <= distribution_count {
                result[current_index] += remain_candies;
                break;
            } else {
                result[current_index] += distribution_count;
                remain_candies -= distribution_count;
            }

            current_index = if current_index >= (num_people as usize) - 1 {
                0
            } else {
                current_index + 1
            };

            distribution_count += 1;
        }

        result
    }
}
