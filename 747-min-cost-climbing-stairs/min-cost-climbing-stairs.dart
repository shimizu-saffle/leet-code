class Solution {
  int minCostClimbingStairs(List<int> cost) {
    for (var i = 2; i < cost.length; i++) {
      cost[i] += min(cost[i - 1], cost[i - 2]);
    }
    return min(cost[cost.length - 1], cost[cost.length - 2]);
  }
}