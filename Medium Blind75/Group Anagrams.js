// # Given an array of strings strs, group the anagrams together. You can return the answer in any order.

// # An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

 

// # Example 1:

// # Input: strs = ["eat","tea","tan","ate","nat","bat"]
// # Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
// # Example 2:

// # Input: strs = [""]
// # Output: [[""]]
// # Example 3:

// # Input: strs = ["a"]
// # Output: [["a"]]

function groupAnagrams(strs) {
    const anagrams = {};
  
    for (const str of strs) {
      // Sort the characters in the string and use it as a key
      const sortedStr = str.split('').sort().join('');
      
      // Initialize an array for the anagram group or append to an existing one
      if (!anagrams[sortedStr]) {
        anagrams[sortedStr] = [str];
      } else {
        anagrams[sortedStr].push(str);
      }
    }
  
    // Convert the values of the object (arrays of anagrams) into an array of arrays
    return Object.values(anagrams);
  }