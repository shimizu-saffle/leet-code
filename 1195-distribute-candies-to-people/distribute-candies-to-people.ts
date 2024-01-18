function distributeCandies(candies: number, num_people: number): number[] {
  let remainCandies = candies;
  let distributionCount = 1;
  let currentIndex = 0;
  const result: number[] = new Array(num_people).fill(0);

  while (remainCandies > 0) {
    if (remainCandies <= distributionCount) {
      result[currentIndex] += remainCandies;
      break;
    } else {
      result[currentIndex] += distributionCount;
      remainCandies -= distributionCount;
    }

    currentIndex = currentIndex >= num_people - 1 ? 0 : currentIndex + 1;
    distributionCount++;
  }

  return result;
}
