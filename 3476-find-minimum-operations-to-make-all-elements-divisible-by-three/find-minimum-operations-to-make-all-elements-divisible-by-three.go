func minimumOperations(nums []int) int {
    operations := 0
    
    for _, num := range nums {
        remainder := num % 3
        if remainder == 1 {
            operations += 1
        } else if remainder == 2 {
            operations += 1
        }
    }
    
    return operations
}
