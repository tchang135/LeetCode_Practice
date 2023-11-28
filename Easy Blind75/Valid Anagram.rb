# Given two strings s and t, return true if t is an anagram of s, and false otherwise.

# An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

 

# Example 1:

# Input: s = "anagram", t = "nagaram"
# Output: true
# Example 2:

# Input: s = "rat", t = "car"
# Output: false


def is_anagram(s, t)
    hash_map1 = Hash.new(0)
    hash_map2 = Hash.new(0)

    if s.length != t.length 
        return false 
    end

    s.each_char do |char|
        hash_map1[char] += 1
    end

    t.each_char do |char|
        hash_map2[char] += 1
    end

    hash_map1 == hash_map2
end