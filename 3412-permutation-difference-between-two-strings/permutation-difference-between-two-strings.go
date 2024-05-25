func findPermutationDifference(s string, t string) int {
    var diff int
    for i := 0; i < len(s); i++ {
        for j := 0; j < len(t); j++ {
            if s[i] == t[j] {
                diff += abs(i - j)
                break
            }
        }
    }
    return diff
}

func abs(x int) int {
    if x < 0 {
        return -x
    }
    return x
}