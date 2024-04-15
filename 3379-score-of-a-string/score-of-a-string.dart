class Solution {
  int scoreOfString(String s) {
    int score = 0;
    for (int i = 0; i < s.length - 1; i++) {
      int ascii1 = s.codeUnitAt(i);
      int ascii2 = s.codeUnitAt(i + 1);
      score += (ascii1 - ascii2).abs();
    }
    return score;
  }
}
