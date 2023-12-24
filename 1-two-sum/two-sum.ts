function twoSum(nums: number[], target: number): number[] {
  const numsRecord: Record<number, number> = {};
  for (let i = 0; i < nums.length; i++) {
    const num = nums[i];
    const complement = target - num;
    if (numsRecord[complement] !== undefined) {
      return [numsRecord[complement], i];
    }
    numsRecord[num] = i;
  }
  throw new Error('No two sum solution found');
}