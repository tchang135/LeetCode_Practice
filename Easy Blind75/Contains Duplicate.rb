# // Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.


# // Example 1:

# // Input: nums = [1,2,3,1]
# // Output: true
# // Example 2:

# // Input: nums = [1,2,3,4]
# // Output: false
# // Example 3:

# // Input: nums = [1,1,1,3,3,4,3,2,4,2]
# // Output: true


def contains_duplicate(nums)
    nums_map = {}

    for i in 0...nums.length 
      if nums_map[nums[i]]
        return true 
      end
      nums_map[nums[i]] = true
    end 
    return false
end