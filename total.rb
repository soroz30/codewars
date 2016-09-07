def total(arr)
  for i in 1..arr.length-1
    arr = arr.map.with_index {|ele,index| ele = [ele, arr[index+1]].inject(:+) if index < arr.length-1}.compact
  end
    arr[0]
end

############

def total(arr)
  return arr.first if arr.size == 1
  total(arr.each_cons(2).map{ |a,b| a+b })
end