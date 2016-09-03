def triangular( n )
  n <= 0 ? 0 : (1..n).to_a.inject(0) {|sum, i| sum += i} 
end


#############

# Return the nth triangular number
def triangular(n)
  (1..n).reduce(0, &:+)
end