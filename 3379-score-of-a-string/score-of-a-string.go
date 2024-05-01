import "math"

func scoreOfString(s string) int {
	score := 0
	for i := 1; i < len(s); i++ {
		score += int(math.Abs(float64(s[i]) - float64(s[i-1])))
	}
	return score
}
