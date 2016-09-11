def sum_of_n(n)
  s = 0
  (0..n.abs).map{|e| s += (n<0 ? -1 : 1)*e}
end