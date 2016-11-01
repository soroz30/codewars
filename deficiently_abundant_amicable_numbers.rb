def div(n)
  (1..n/2).select { |i| n % i == 0 }.inject(:+)
end

def kind_of_number(num, sum_of_divisors)
  %w(perfect deficient abundant)[num <=> sum_of_divisors]
end

def amicable(sum1, sum2, n1, n2)
  sum1 == n2 || sum2 == n1 ? "amicable" : "not amicable"
end

def deficiently_abundant_amicable_numbers(n1,n2)
  sum_of_div1, sum_of_div2 = div(n1), div(n2)
  amicable = amicable(sum_of_div1, sum_of_div2, n1, n2)
  "#{kind_of_number(n1, sum_of_div1)} #{kind_of_number(n2, sum_of_div2)} #{amicable}"
end