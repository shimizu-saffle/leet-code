function lastStoneWeight(stones: number[]): number {
  if (stones.length === 1) return stones[0] ?? 0;

  stones.sort((a, b) => b - a);

  while (stones.length > 1) {
    const stone1 = stones.shift()!;
    const stone2 = stones.shift()!;

    if (stone1 !== stone2) {
      const newStone = stone1 - stone2;
      const index = stones.findIndex((s) => s < newStone);
      stones.splice(index >= 0 ? index : stones.length, 0, newStone);
    }
  }

  return stones.length === 0 ? 0 : stones[0];
}
