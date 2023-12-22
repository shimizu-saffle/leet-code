class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final numsMap = <int, int>{};
    for (int i = 0; i < nums.length; i++) {
      final num = nums[i];
      final complement = target - num;
      if (numsMap.containsKey(complement)) {
        return [numsMap[complement]!, i];
      }
      numsMap[num] = i;
    }
    throw Exception('No two sum solution found');
  }
}