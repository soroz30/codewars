def numbers_with_digit_inside(x, d)
  numbers = (1..x).to_a.map(&:to_s).select {|ele| ele.include? d.to_s}.map(&:to_i)
  numbers.length == 0 ? [0,0,0] : [numbers.length, numbers.inject(:+), numbers.inject(:*)]
end 6)