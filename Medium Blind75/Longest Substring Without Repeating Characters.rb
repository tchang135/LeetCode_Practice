# Given a string s, find the length of the longest 
# substring
#  without repeating characters.

 

# Example 1:

# Input: s = "abcabcbb"
# Output: 3
# Explanation: The answer is "abc", with the length of 3.
# Example 2:

# Input: s = "bbbbb"
# Output: 1
# Explanation: The answer is "b", with the length of 1.
# Example 3:

# Input: s = "pwwkew"
# Output: 3
# Explanation: The answer is "wke", with the length of 3.
# Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.


def length_of_longest_substring(s)
    letter_index = {}  
    max_length = 0
    start = 0  

    s.each_char.with_index do |char, i|
        if letter_index[char] && letter_index[char] >= start
            start = letter_index[char] + 1  
        end

        letter_index[char] = i  
        current_length = i - start + 1
        max_length = [max_length, current_length].max
    end

    max_length
end