def main_diagonal_product(mat)
  (0..mat.length-1).map {|i| mat[i][i]}.inject(:*)
end

################

def main_diagonal_product(mat)
  mat.each_with_index.inject(1) { |n, (v, i)| n * v[i] }
end