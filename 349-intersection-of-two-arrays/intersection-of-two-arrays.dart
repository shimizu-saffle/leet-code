class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    return nums1.where((e) => nums2.contains(e)).toSet().toList();
  }
}
