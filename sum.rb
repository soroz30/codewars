def sum(arr)
  return 0 if arr.empty?
  new = [arr, arr.reverse]
  new.map {|item| item.map.with_index {|item,index| p item[index]}.inject(:+)}.inject(:+)
end

##############

def sum(arr)
  (0...arr.count).reduce(0){|sum, i| sum + arr[i][i] + arr[arr.count-1-i][i]}
end