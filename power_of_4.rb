def power_of_4(number)
  return false unless number.is_a? Integer 
  (Math.log(number)/Math.log(4)).to_s
end
power_of_4(1024)

##################

def power_of_4(n)
  n.is_a?(Integer) && n>0 ? Math.log(n, 4) % 1 == 0 : false
end

###################3

