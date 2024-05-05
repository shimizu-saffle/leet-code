function buildArray(nums: number[]): number[] {
  const ans: number[] = Array(nums.length).fill(0);

  for (let i = 0; i < nums.length; i++) {
    ans[i] = nums[nums[i]];
  }

  return ans;
}
