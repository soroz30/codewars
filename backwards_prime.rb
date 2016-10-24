def backwardsPrime(start, stop)
  (start..stop).select { |n| backwards_prime?(n) }
               .sort!
end

def backwards_prime?(n)
  reverse_n = n.to_s.reverse.to_i
  n != reverse_n   &&   prime?(n) && prime?(reverse_n)
end

def prime?(n)
  max = Math.sqrt(n).floor
  (2..max).all? { |i| n % i != 0 }
end

####### w rozwiazaniach primow licz do pierwiastka