def diagonalSum(matrix)
  matrix.map.with_index {|i, index| i[index]}.inject(:+)
end