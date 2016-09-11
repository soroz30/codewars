def find_missing_numbers(arr)
  arr.length <= 1 ? [] : (arr.first..arr.last).select {|i| !(arr.include?(i))}
end