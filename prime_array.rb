def prime_array(n)
  prime_array = []
  for i in 1..n do
    next if (2..i-1).find {|d| i % d == 0}
    prime_array << i
  end
  p prime_array
end

prime_array(20)