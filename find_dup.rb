def find_dup(arr)
  arr.select.with_index {|ele, index| arr.count(arr[index]) > 1}.uniq[0]
end

######################################

def find_dup(arr)
  arr.detect {|e| arr.count(e) > 1}
end