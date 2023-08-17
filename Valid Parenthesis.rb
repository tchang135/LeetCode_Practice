# // Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# // An input string is valid if:

# // Open brackets must be closed by the same type of brackets.
# // Open brackets must be closed in the correct order.
# // Every close bracket has a corresponding open bracket of the same type. 

# // Example 1:
#     // Input: s = "()"
#     // Output: true

# // Example 2:
#     // Input: s = "()[]{}"
#     // Output: true


def is_valid(s)
    stack = []
    pairs = {
        '(' => ')',
        '{' => '}',
        '[' => ']'
    }

    for bracket in s.chars
        if pairs.key?(bracket)
            stack.push(bracket)
        elsif stack.empty? || bracket != pairs[stack.pop]
            return false
        end
    end

    stack.empty?
end