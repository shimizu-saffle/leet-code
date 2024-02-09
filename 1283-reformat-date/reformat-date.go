import (    
    "regexp"
    "strings"
)

func reformatDate(date string) string {
    monthMap := map[string]string{
        "Jan": "01",
        "Feb": "02",
        "Mar": "03",
        "Apr": "04",
        "May": "05",
        "Jun": "06",
        "Jul": "07",
        "Aug": "08",
        "Sep": "09",
        "Oct": "10",
        "Nov": "11",
        "Dec": "12",
    }

    parts := strings.Split(date, " ")
    if len(parts) < 3 {
        return "Invalid date format"
    }

    day := parts[0]
    month := parts[1]
    year := parts[2]

    regExp := regexp.MustCompile(`\d+`)
    match := regExp.FindString(day)
    if match == "" {
        return "Invalid day format"
    }

    formattedDay := match
    if len(match) == 1 {
        formattedDay = "0" + match
    }

    monthNumber, ok := monthMap[month]
    if !ok {
        return "Invalid month string"
    }

    return fmt.Sprintf("%s-%s-%s", year, monthNumber, formattedDay)
}