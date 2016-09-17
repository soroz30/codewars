def duplicates(arr)
  arr.select{|i| arr.count(i) > 1}.uniq
end