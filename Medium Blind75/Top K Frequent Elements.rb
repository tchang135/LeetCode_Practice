# Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.

 

# Example 1:

# Input: nums = [1,1,1,2,2,3], k = 2
# Output: [1,2]
# Example 2:

# Input: nums = [1], k = 1
# Output: [1]

def top_k_frequent(nums, k)
    answer = []
    num_counter = nums.tally
    sorted_array = num_counter.to_a

    sorted_array.sort_by! { |key, value| -value }
  
    i = 0
    while i < k 
        answer << sorted_array[i][0]
        i += 1
    end

    answer
end