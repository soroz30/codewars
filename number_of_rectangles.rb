def number_of_rectangles(m, n)
  (1..n).map {|i| i.step(i*m,i).inject(:+)}.inject(:+)
end


########

def number_of_rectangles(m, n)
  n * m * (n + 1) * (m + 1) / 4
end