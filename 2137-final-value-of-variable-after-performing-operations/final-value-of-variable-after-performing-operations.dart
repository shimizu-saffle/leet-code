class Solution {
  int finalValueAfterOperations(List<String> operations) {
    int x = 0;
    for (String op in operations) {
      if (op == "++X" || op == "X++") {
        x++;
      } else if (op == "--X" || op == "X--") {
        x--;
      }
    }
    return x;
  }
}