def shifted_diff(first, second)
  counter = 0
  while first != second
    first = first[-1] + first[0...-1]
    counter += 1
    return -1 if counter == first.length
  end
  counter
end

#############

def shifted_diff(first, second)
  (0..second.size).each {|n|return n if first == second.chars.rotate(n).join}
  -1
end