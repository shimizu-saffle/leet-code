function lastVisitedIntegers(nums: number[]): number[] {
    let seen: number[] = [];
    let ans: number[] = [];
    let k = 0;

    nums.forEach(num => {
        if (num === -1) {
            k++;
            ans.push(k <= seen.length ? seen[k - 1] : -1);
        } else {
            k = 0;
            seen.unshift(num);
        }
    });

    return ans;
}
