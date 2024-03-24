func lastVisitedIntegers(nums []int) []int {
    seen := []int{}
    ans := []int{}
    consecutiveNegatives := 0 

    for _, num := range nums {
        if num > 0 {
            seen = append([]int{num}, seen...)
            consecutiveNegatives = 0 
        } else {
            consecutiveNegatives++ 
            if consecutiveNegatives <= len(seen) {
                ans = append(ans, seen[consecutiveNegatives-1])
            } else {
                ans = append(ans, -1)
            }
        }
    }
    return ans
}
