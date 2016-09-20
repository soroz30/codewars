def dominator(arr)
  arr.select{|i| arr.count(i) > arr.length/2}.uniq[0] || -1
end

###############

def dominator(arr)
  arr.find { |x| arr.count(x) > arr.length/2 } || -1
end