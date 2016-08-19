def number_of_rectangles(m, n)
  (1..n).map {|i| i.step(i*m,i).inject(:+)}.inject(:+)
end