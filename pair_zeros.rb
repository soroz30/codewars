def pair_zeros(arr)
  list = arr.map.with_index {|i, index| index if i == 0}.compact.select.with_index {|i, index| index if index % 2 == 1 && index != 0}
  p arr.delete_if.with_index {|i, index| list.include? index}
end

pair_zeros([9, 7, 2, 5, 3, 1, 3, 3, 6, 0, 5, 7, 0, 5, 0, 7, 0, 3, 3, 9, 9, 0, 2, 7, 3, 4, 3, 3, 6, 5, 7, 7, 9, 4, 1])

#####################3

def pair_zeros(arr)
  arr.join.gsub(/(0)([1-9]*)(0)/,'\1\2').chars.map(&:to_i)
end