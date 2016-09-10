def adding_shifted(arrayOfArrays, shift)
  counter = shift
  (1...arrayOfArrays.length).to_a.each do |i|
    shift.times do arrayOfArrays[i].unshift(nil) end
    shift += counter
  end
  array = Array.new(arrayOfArrays.last.length)
  array.map.with_index do |i,index| 
    sum = 0
    arrayOfArrays.each do |i|
      sum += i[index] if i[index] != nil
    end
    sum
  end
end

############

def adding_shifted(arr, shift)
  arr = arr.each_with_index do |a,i|
    (i*shift).times { a.unshift(0) }
    ((arr.length-i-1)*shift).times { a.push(0) }
  end
  arr.transpose.map { |x| x.reduce(:+) }
end
