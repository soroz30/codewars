def row_sum_odd_numbers(n)
   first_number = (1...n).to_a.inject(1) {|sum, n| sum += n*2}
   first_number.step((first_number+(n-1)*2),2).inject(:+)
end

#############

def row_sum_odd_numbers(n)
  n**3
end