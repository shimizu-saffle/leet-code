import (
    "strconv"
    "strings"
)

func timeToMinutes(time string) int {
    parts := strings.Split(time, ":")
    hours, _ := strconv.Atoi(parts[0])
    minutes, _ := strconv.Atoi(parts[1])
    return hours*60 + minutes
}

func convertTime(current string, correct string) int {
    gap := timeToMinutes(correct) - timeToMinutes(current)
    count := 0
    operations := []int{60, 15, 5, 1}

    for _, op := range operations {
        count += gap / op
        gap %= op
    }

    return count
}
