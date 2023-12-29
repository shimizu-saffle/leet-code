import 'dart:collection';

class Solution {
  List<int> lastVisitedIntegers(List<String> words) {
    int k = 0;
    final visitedNumbers = Queue<int>();
    final result = <int>[];

    words.asMap().forEach((i, word) {
      if (word == 'prev') {
        k++;
        result.add(
            k <= visitedNumbers.length ? visitedNumbers.elementAt(k - 1) : -1);
      } else {
        k = 0;
        visitedNumbers.addFirst(int.parse(word));
      }
    });

    return result;
  }
}
