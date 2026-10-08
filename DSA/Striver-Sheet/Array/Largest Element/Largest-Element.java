/* Largest-Element(Optimal Solution)
T.C = O(N)
*/
class Solution {
    public int largestElement(int[] nums) {
        int largest = nums[0];
        for(int i=0;i<nums.length;i++){
            if(nums[i]>largest){
                largest = nums[i];
            }
        }
        return largest;
    }
}

/* Largest-Element(Brute Solution) 
T.C = O(NlogN)
S.C = O(NlogN)
*/
import java.util.Arrays;
class Solution {
    public int largestElement(int[] nums) {
        Arrays.sort(nums);

        return nums[nums.length - 1];
    }
}
