def alternate_sq_sum(array)
  return 0 if array.empty?
  array.map.with_index {|i, index| index.odd? ? i**2 : i }.inject(:+)
end

#########

def alternate_sq_sum(array)
   array.map.with_index{|x,i| i.odd? ? x*x : x}.reduce(0,:+)
end