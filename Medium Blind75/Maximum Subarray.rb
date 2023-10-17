# Given an integer array nums, find the 
# subarray
#  with the largest sum, and return its sum.

 

# Example 1:

# Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
# Output: 6
# Explanation: The subarray [4,-1,2,1] has the largest sum 6.
# Example 2:

# Input: nums = [1]
# Output: 1
# Explanation: The subarray [1] has the largest sum 1.
# Example 3:

# Input: nums = [5,4,-1,7,8]
# Output: 23
# Explanation: The subarray [5,4,-1,7,8] has the largest sum 23.


def max_sub_array(nums)
    return 0 if nums.empty?
  
    max_sum = current_sum = nums[0]
  
    (1...nums.length).each do |i|
      current_sum = [nums[i], current_sum + nums[i]].max
      max_sum = [max_sum, current_sum].max
    end
  
    return max_sum
  end