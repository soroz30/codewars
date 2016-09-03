def amicable_numbers(n1,n2)
  (1..(n1 / 2)).select { |val| n1 % val == 0 }.inject(:+) == n2
end