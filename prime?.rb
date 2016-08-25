def prime?(num)
  return false if num == 1
  (2..(num-1)).each do |i|
    return false if num % i == 0
  end
  true
end

def select_primes(arr)
  arr.select {|value| prime?(value)}
end

def count_primes(arr)
  arr.count {|value| prime?(value)}
end