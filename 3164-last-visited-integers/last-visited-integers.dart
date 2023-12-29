class Solution {
  List<int> lastVisitedIntegers(List<String> words) {
    int k = 0;
    final visitedNumbers = <int>[];
    final result = <int>[];

    for (var i = 0; i < words.length; i++) {
      final word = words[i];
      if (words[i] == 'prev') {
        k++;
        if (k <= visitedNumbers.length) {
          result.add(visitedNumbers[k - 1]);
        } else {
          result.add(-1);
        }
      } else {
        k = 0;
        visitedNumbers.insert(0, int.parse(word));
      }
    }

    return result;
  }
}
