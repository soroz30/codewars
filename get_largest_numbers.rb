def get_larger_numbers(a, b)
  a.map.with_index{|ele,index| ele > b[index] ? ele : b[index]}
end

##############

def get_larger_numbers(a, b)
  a.zip(b).map(&:max)
end