class Solution {
  int findPermutationDifference(String s, String t) {
    int n = s.length;
    int difference = 0;
    
    Map<String, int> sIndexMap = {};
    for (int i = 0; i < n; i++) {
      sIndexMap[s[i]] = i;
    }
    
    for (int i = 0; i < n; i++) {
      difference += (sIndexMap[t[i]]! - i).abs();
    }
    
    return difference;
  }
}