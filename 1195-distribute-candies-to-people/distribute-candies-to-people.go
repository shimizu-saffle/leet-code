func distributeCandies(candies int, num_people int) []int {
	remainingCandies := candies
	ditributionCount := 1
	currentIndex := 0
	result := make([]int, num_people)

	for remainingCandies > 0 {
		if remainingCandies <= ditributionCount {
			result[currentIndex] += remainingCandies
			return result
		} else {
			result[currentIndex] += ditributionCount
			remainingCandies -= ditributionCount
		}
		currentIndex = (currentIndex + 1) % num_people
		ditributionCount++
	}
	return result
}