class Solution {
  List<int> distributeCandies(int candies, int num_people) {
    int remainCandies = candies;
    int distributionCount = 1;
    int currentIndex = 0;
    final result = List.generate(num_people, (_) => 0);
    while (remainCandies > 0) {
      if (remainCandies <= distributionCount) {
        result[currentIndex] += remainCandies;
        return result;
      } else {
        result[currentIndex] += distributionCount;
        remainCandies -= distributionCount;
      }
      currentIndex = (currentIndex >= num_people - 1) ? 0 : currentIndex + 1;
      distributionCount++;
    }
    return result;
  }
}
