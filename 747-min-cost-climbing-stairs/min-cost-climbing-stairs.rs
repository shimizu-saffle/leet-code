impl Solution {
    pub fn min_cost_climbing_stairs(mut cost: Vec<i32>) -> i32 {
        let n = cost.len();
        for i in 2..n {
            cost[i] += std::cmp::min(cost[i - 1], cost[i - 2]);
        }
        std::cmp::min(cost[n - 1], cost[n - 2])
    }
}
