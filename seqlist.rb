def seqlist(first,c,l)
  array = [first]
  (0...l-1).each {|_| array.push(array.last+c) }
  array
end

###############

def seqlist(first,c,l)
  Array.new(l) { |i| first+c*i }
end