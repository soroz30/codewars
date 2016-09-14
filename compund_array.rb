def compound_array(a, b)
  b.each_with_index {|i, index| a.insert(index+1+(1*index), i)}
  a.compact
end

########

def compound_array(a, b)
  (a.fill(nil, a.length..b.length)).zip(b).flatten.compact
end