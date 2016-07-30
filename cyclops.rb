def cyclops?(n)
  binary = n.to_s(2)
  length = binary.length
  return false if length.even?
  binary[length/2]=="0" && binary.count("1") == length-1 ? true : false
end


#######

def cyclops?(n)
  n = n.to_s(2)
  n.count("0") == 1 && n == n.reverse
end