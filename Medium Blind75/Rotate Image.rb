# You are given an n x n 2D matrix representing an image, rotate the image by 90 degrees (clockwise).

# You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.


# Example 1:
# Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
# Output: [[7,4,1],[8,5,2],[9,6,3]]


def rotate(matrix)
    n = matrix.length
  
    # Step 1: Transpose the matrix (swap rows and columns)
    (0...n).each do |i|
      (i...n).each do |j|
        matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
      end
    end
  
    # Step 2: Reverse each row of the transposed matrix
    (0...n).each do |i|
      matrix[i].reverse!
    end
end