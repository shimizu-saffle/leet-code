function arraySign(nums: number[]): number {
    let negativeCount = 0;
    for (const num of nums) {
        if (num === 0) {
            return 0;
        } else if (num < 0) {
            negativeCount++;
        }
    }
    return negativeCount % 2 === 0 ? 1 : -1;
}
