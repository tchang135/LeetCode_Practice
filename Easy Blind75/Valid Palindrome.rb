# A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

# Given a string s, return true if it is a palindrome, or false otherwise.

 

# Example 1:

# Input: s = "A man, a plan, a canal: Panama"
# Output: true
# Explanation: "amanaplanacanalpanama" is a palindrome.
# Example 2:

# Input: s = "race a car"
# Output: false
# Explanation: "raceacar" is not a palindrome.
# Example 3:

# Input: s = " "
# Output: true
# Explanation: s is an empty string "" after removing non-alphanumeric characters.
# Since an empty string reads the same forward and backward, it is a palindrome.


def is_palindrome(s)
    cleaned_string = ""
    alphabet_and_digits = ("a".."z").to_a + ("0".."9").to_a

    s.each_char do |char|
        lowercase_char = char.downcase
        if alphabet_and_digits.include?(lowercase_char)
            cleaned_string << lowercase_char
        end
    end

    cleaned_string == cleaned_string.reverse
end