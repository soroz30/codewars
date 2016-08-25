def interleave(arr1, arr2)
  result = []
  length = arr1.size
  length.times do |i|
    result << arr1[i]
    result << arr2[i]
  end
  result
end

p interleave([1,2,3], ['a','b','c'])