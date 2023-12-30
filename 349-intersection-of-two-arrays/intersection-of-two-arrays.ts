function intersection(nums1: number[], nums2: number[]): number[] {
  const result = nums1.filter((e) => nums2.includes(e));
  return Array.from(new Set(result));
}
