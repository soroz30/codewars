def hot_singles(arr1, arr2)
  array = (arr1 + arr2)
  array.select {|ele| !(arr1.include?(ele) && arr2.include?(ele))}.uniq
end

##############################################

def hot_singles(arr1, arr2)
  (arr1 + arr2 - (arr1 & arr2)).uniq
end