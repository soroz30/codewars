#least common multiplier
def smallest(n)
  (1..n).inject(:lcm)
end


smallest(5)