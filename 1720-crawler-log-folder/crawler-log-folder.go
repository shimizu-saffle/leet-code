func minOperations(logs []string) int {
    currentDepth := 0

    for _, log := range logs {
        switch log {
        case "../":
            if currentDepth > 0 {
                currentDepth--
            }
        case "./":
        default:
            currentDepth++
        }
    }

    return currentDepth
}
