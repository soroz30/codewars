def diff_big_2(arr)
  return arr.max-arr.max(2)[1]
end

#############

def diff_big_2(arr)
  arr.max(2).reduce(:-)
end