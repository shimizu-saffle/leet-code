function minimumOperations(nums: number[]): number {
    let totalOperations = 0;

    for (const num of nums) {
        const remainder = num % 3;
        if (remainder === 1 || remainder === 2) {
            totalOperations += 1;
        }
    }

    return totalOperations;
}