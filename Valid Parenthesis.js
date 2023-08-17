// Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

// An input string is valid if:

// Open brackets must be closed by the same type of brackets.
// Open brackets must be closed in the correct order.
// Every close bracket has a corresponding open bracket of the same type. 

// Example 1:
    // Input: s = "()"
    // Output: true

// Example 2:
    // Input: s = "()[]{}"
    // Output: true


function isValid(s) {
    const stack = [];
    const pairs = {
        '{': '}',
        '(': ')',
        '[': ']'
    };
    
    for (let bracket of s) {
        if (bracket in pairs) {
            stack.push(bracket);
        } else if (stack.length === 0 || bracket !== pairs[stack.pop()]) {
            return false;
        }
    }
    
    return stack.length === 0;
}