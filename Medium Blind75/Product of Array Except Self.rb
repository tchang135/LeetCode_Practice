# Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

# The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

# You must write an algorithm that runs in O(n) time and without using the division operation.

 

# Example 1:

# Input: nums = [1,2,3,4]
# Output: [24,12,8,6]
# Example 2:

# Input: nums = [-1,1,0,-3,3]
# Output: [0,0,9,0,0]
def product_except_self(nums)
	n = nums.length
	result = [1] * n
  
	left_product = 1
	(0...n).each do |i|
	  result[i] *= left_product
	  left_product *= nums[i]
	end
  
	right_product = 1
	(n - 1).downto(0).each do |i|
	  result[i] *= right_product
	  right_product *= nums[i]
	end
  
	return result
  end