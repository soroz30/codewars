def power_of_two?(x)
  x==2 ? true : Math.sqrt(x).to_s[-2..-1] == ".0" ? true : false
end

##########3

def power_of_two?(n)
  n & (n-1) == 0
end