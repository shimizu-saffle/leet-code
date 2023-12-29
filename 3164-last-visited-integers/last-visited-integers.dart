class Solution {
  List<int> lastVisitedIntegers(List<String> words) {
    int k = 0;
    final visitedNumbers = <int>[];
    final result = <int>[];

    for (var i = 0; i < words.length; i++) {
      final word = words[i];
      if (words[i] == 'prev') {
        k++;
        final lastVisitedIndex = k - 1;
        if (lastVisitedIndex >= visitedNumbers.length) {
          result.add(-1);
        } else {
          final numsReverse = visitedNumbers.reversed.toList();
          result.add(numsReverse[lastVisitedIndex]);
        }
      } else {
        k = 0;
        visitedNumbers.add(int.parse(word));
      }
    }

    return result;
  }
}
