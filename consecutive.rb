def consecutive(arr)
  arr.length <=1 ? 0 : (arr.max - arr.min) - (arr.length-1)
end