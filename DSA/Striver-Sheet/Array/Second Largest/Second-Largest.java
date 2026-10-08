/* Brute Approach*/
import java.util.Arrays;
class Solution {
    public int secondLargestElement(int[] nums) {
        Arrays.sort(nums);

        int largest = nums[nums.length - 1];

        for (int i = nums.length - 2; i >= 0; i--) {
            if (nums[i] < largest) {
                return nums[i];
            }
        }

        return -1;
    }
}

/* Better Approach*/
class Solution {
    public int secondLargestElement(int[] nums) {
        int largest = Integer.MIN_VALUE;
        for(int i=0;i<nums.length;i++){
            if(nums[i]>largest){
                largest = nums[i];
            }
        }

        int slargest = -1;
        for(int i=0;i<nums.length;i++){
            if(nums[i]>slargest && nums[i]!=largest){
                slargest = nums[i];
            }
        }

        if (slargest == Integer.MIN_VALUE) {
            return -1;
        }
        return slargest;
    }
}

/* Optimal Approach*/
class Solution {
    public int secondLargestElement(int[] nums) {
        int largest = Integer.MIN_VALUE;
        int slargest = -1;
        for(int i=0;i<nums.length;i++){
            if(nums[i]>largest){
                slargest = largest;
                largest = nums[i];
            }
            else if(nums[i] < largest && nums[i] > slargest){
                slargest = nums[i];
            }
        }
        if (slargest == Integer.MIN_VALUE) {
            return -1;
        }
        return slargest;
    }
}
