func twoSum(nums []int, target int) []int {
	numsMap := make(map[int]int)
	for i, num := range nums {
		if complementIndex, exists := numsMap[target - num]; exists {
			return []int{complementIndex, i}
		}
		numsMap[num] = i
	}
	return []int{}
}