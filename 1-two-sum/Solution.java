import java.util.HashMap;
import java.util.Map;

public class Solution {
    public int[] twoSum(int[] nums, int target) {
        Map<Integer, Integer> numsMap = new HashMap<>();
        
        for (int i = 0; i < nums.length; i++) {
            int num = nums[i];
            int complement = target - num;
            
            if (numsMap.containsKey(complement)) {
                return new int[]{numsMap.get(complement), i};
            }
            
            numsMap.put(num, i);
        }
        
        throw new IllegalArgumentException("No two sum solution found");
    }
}