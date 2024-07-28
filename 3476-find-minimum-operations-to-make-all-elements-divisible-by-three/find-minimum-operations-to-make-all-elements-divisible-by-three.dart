class Solution {
  int minimumOperations(List<int> nums) {
    int operations = 0;
    
    for (int num in nums) {
      int remainder = num % 3;
      if (remainder == 1) {
        operations += 1;
      } else if (remainder == 2) {
        operations += 1;
      }
    }
    
    return operations;
  }
}