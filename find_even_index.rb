 def sum_array(arr)
   result = arr.inject(:+)
   result.nil? ? 0 : result
 end
 
 def find_even_index(arr)
  index = (0..arr.length-1).find do|i| 
    first_part = sum_array(arr[0...i])
    second_part = sum_array(arr[i+1..arr.length-1])
    first_part == second_part
  end
  index.nil? ? -1 : index
end

###########

def find_even_index(ary)
  0.upto(ary.length).select{|l| ary[0..l].reduce(:+) == ary[l..-1].reduce(:+)}.first || -1
end