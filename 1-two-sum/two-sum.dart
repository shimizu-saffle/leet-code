class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final result = <int>[];
    for (final n in nums) {
      final complement = target - n;
      final currentIndex = nums.indexOf(n);
      final duplicateIndex = nums.indexWhere((e) => n == e, currentIndex + 1);
      if (nums.contains(complement)) {
        final complementIndex = nums.indexOf(complement);
        if (duplicateIndex > 0) {
          return [currentIndex, duplicateIndex];
        }
        if (currentIndex != complementIndex) {
          result.addAll([currentIndex, complementIndex]);
          break;
        }
      }
    }
    return result;
  }
}