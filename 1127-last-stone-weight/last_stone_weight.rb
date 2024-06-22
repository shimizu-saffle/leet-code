def last_stone_weight(stones)
  return stones[0] if stones.length == 1

  stones.sort!.reverse!

  while stones.length > 1
    stone1 = stones.shift
    stone2 = stones.shift

    if stone1 != stone2
      new_stone = stone1 - stone2
      index = stones.index { |s| s < new_stone } || stones.length
      stones.insert(index, new_stone)
    end
  end

  stones.empty? ? 0 : stones[0]
end