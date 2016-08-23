def is_prime?(number)
  (2..(number-1)).each do |divisor|
    return false if number % divisor == 0
  end

  true
end

def find_primes(start, stop)
  (start..stop).select do |number|
    is_prime?(number)
  end
end

