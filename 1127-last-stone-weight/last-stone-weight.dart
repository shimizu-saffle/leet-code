class Solution {
  int lastStoneWeight(List<int> stones) {
    if (stones.length < 2) return stones[0];

    List<int> remainStones = [...stones]..sort((a, b) => b.compareTo(a));

    while (remainStones.length >= 2) {
      int theHeaviestStone = 0;
      int secondHeaviestStone = 0;

      for (final stone in remainStones) {
        if (theHeaviestStone < stone) {
          theHeaviestStone = stone;
        } else if (secondHeaviestStone < stone) {
          secondHeaviestStone = stone;
        }
      }

      remainStones.remove(theHeaviestStone);
      remainStones.remove(secondHeaviestStone);
      remainStones.add(theHeaviestStone - secondHeaviestStone);
      remainStones.sort((a, b) => b.compareTo(a));
      theHeaviestStone = 0;
      secondHeaviestStone = secondHeaviestStone = 0;
    }

    return remainStones[0];
  }
}
