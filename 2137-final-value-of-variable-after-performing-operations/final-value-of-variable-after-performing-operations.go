func finalValueAfterOperations(operations []string) int {
    x := 0
    for _, op := range operations {
        if op[1] == '+' {
            x++
        } else {
            x--
        }
    }
    return x
}