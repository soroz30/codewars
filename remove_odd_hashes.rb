def remove_odd_hashes(array, key_1, key_2)
  array.select {|ele| ele.values.inject(:+)%2 != 1}
end

#############

def remove_odd_hashes(array, key_1, key_2)
  array.select {|x| (x[key_1] + x[key_2]).even?}
end