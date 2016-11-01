def cumulative_triangle(n)
  first_num = (1..n-1).inject(1) { |sum, i| sum += i }
  (first_num..first_num+n-1).inject(:+)
end

################

def cumulative_triangle(n)
  # https://oeis.org/A006003
  n * (n ** 2 + 1) / 2
end