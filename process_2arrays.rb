




def process_2arrays(arr1, arr2)
  uniq1, uniq2 = arr1.uniq.length, arr2.uniq.length
  both = (arr1 & arr2).length
  one = (uniq1-both)+(uniq2-both)
  extract1 = uniq1-both
  extract2 = uniq2-both
  p [both, one, extract1, extract2]
end

arr1 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
arr2 = [2, 4, 6, 8, 10, 12, 14]

process_2arrays(arr1, arr2)


##################33

def process_2arrays arr1, arr2
  both = (arr1 & arr2).size
  d1 = arr1.size - both
  d2 = arr2.size - both
  [both, d1 + d2, d1, d2]
end