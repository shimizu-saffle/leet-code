class Solution {
  int arraySign(List<int> nums) {    
    var negativeCount = 0;
    for (final num in nums) {
      if (num == 0) {
        return 0;
      } else if (num.sign == -1) {
        negativeCount++;
      }
    }
    return negativeCount.isEven ? 1 : -1;
  }
}