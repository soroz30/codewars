def solution(array, key)
  array.sort{|x,y| x.values.inject(:+) <=> y.values.inject(:+)}
end

##############

def solution(array, key)
  array.sort_by {|a| a[key]}
end