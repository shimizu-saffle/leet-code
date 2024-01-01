func intersection(nums1 []int, nums2 []int) []int {
	nums1Map := make(map[int]struct{})
	for _, num := range nums1 {
		nums1Map[num] = struct{}{}
	}

	resultMap := make(map[int]struct{})
	for _, num := range nums2 {
		if _, exists := nums1Map[num]; exists {
			resultMap[num] = struct{}{}
		}
	}

	resultSlice := make([]int, 0, len(resultMap))
	for num := range resultMap {
		resultSlice = append(resultSlice, num)
	}

	return resultSlice
}