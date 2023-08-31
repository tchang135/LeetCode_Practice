# Given the root of a binary tree, invert the tree, and return its root.


# Example 1:


# Input: root = [4,2,7,1,3,6,9]
# Output: [4,7,2,9,6,3,1]

class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

def invert_tree(root)
    return nil if root.nil?
    
    # Swap the left and right subtrees
    root.left, root.right = root.right, root.left
    
    # Invert the left and right subtrees recursively
    invert_tree(root.left)
    invert_tree(root.right)
    
    root  # Return the modified root
end