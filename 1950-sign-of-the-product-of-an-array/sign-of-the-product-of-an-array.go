func arraySign(nums []int) int {
    negativeCount := 0

    for _, num := range nums {
        if num == 0 {
            return 0
        } else if num < 0 {
            negativeCount++
        }
    }

    if negativeCount%2 == 0 {
        return 1
    } else {
        return -1
    }
}
