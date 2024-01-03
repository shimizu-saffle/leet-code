class Solution {
  int lastStoneWeight(List<int> stones) {
    if (stones.length < 2) return stones[0];

    stones.sort((a, b) => b.compareTo(a));

    while (stones.length > 1) {
      int stone1 = stones.removeAt(0);
      int stone2 = stones.removeAt(0);

      if (stone1 != stone2) {
        final newStone = stone1 - stone2;
        int i = 0;
        while (i < stones.length && stones[i] > newStone) {
          i++;
        }
        stones.insert(i, newStone);
      }
    }

    return stones.isEmpty ? 0 : stones[0];
  }
}
