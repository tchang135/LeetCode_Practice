# You are given a string s and an integer k. You can choose any character of the string and change it to any other uppercase English character. You can perform this operation at most k times.

# Return the length of the longest substring containing the same letter you can get after performing the above operations.

 

# Example 1:

# Input: s = "ABAB", k = 2
# Output: 4
# Explanation: Replace the two 'A's with two 'B's or vice versa.
# Example 2:

# Input: s = "AABABBA", k = 1
# Output: 4
# Explanation: Replace the one 'A' in the middle with 'B' and form "AABBBBA".
# The substring "BBBB" has the longest repeating letters, which is 4.
# There may exists other ways to achive this answer too.

def character_replacement(s, k)
    max_length = 0
    max_count = 0
    char_count = Hash.new(0)
    start_index = 0
  
    s.each_char.with_index do |char, end_index|
      char_count[char] += 1
      max_count = [max_count, char_count[char]].max
  
      # Calculate the number of replacements needed for the current window.
      replacements_needed = end_index - start_index + 1 - max_count
  
      # If the number of replacements needed exceeds k, move the window's start.
      if replacements_needed > k
        char_count[s[start_index]] -= 1
        start_index += 1
      end
  
      max_length = [max_length, end_index - start_index + 1].max
    end
  
    return max_length
  end