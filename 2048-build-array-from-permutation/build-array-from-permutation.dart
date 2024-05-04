class Solution {
  List<int> buildArray(List<int> nums) {
    List<int> ans = List<int>.filled(nums.length, 0);

    for (int i = 0; i < nums.length; i++) {
      ans[i] = nums[nums[i]];
    }

    return ans;
  }
}
