def average(array)
  (array.inject(:+)/(array.length.to_f)).round
end