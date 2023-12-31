function intersection(nums1: number[], nums2: number[]): number[] {
  return Array.from(new Set(nums1.filter((e) => nums2.includes(e))));
}
