// # Given two strings s and t, return true if t is an anagram of s, and false otherwise.

// # An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

 

// # Example 1:

// # Input: s = "anagram", t = "nagaram"
// # Output: true
// # Example 2:

// # Input: s = "rat", t = "car"
// # Output: false


function isAnagram(s, t) {
    //check the length of the strings. if they are not equal. automatically false
    if (s.length !== t.length) {
        return false;
    }
    //create an empty hash
    const charCount = {};

    //for each character in s, you are   
    for (let char of s) {
        charCount[char] = (charCount[char] || 0) + 1;
    }

    //if the letter in t is not found in your hash, then you know that it does not exist in the other string an dit is false.
    for (let char of t) {
        if (!charCount[char]) {
            return false;
        }
        charCount[char]--;
    }

    //return true if none of these return false, meaning the strings are anagrams
    return true;
}