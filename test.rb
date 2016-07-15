def check_root(string)
  #your code here
  string = string.split(",").map {|element| element.to_i}.sort
  return 'incorrect input' if string.size < 4 || string.any? {|ele| ele.to_i.to_s.to_i != ele}
  return 'not consecutive' if string.length - 1 != string.max - string.min
  square = string.inject(:*) + 1
  result = square / square
  return square, result 
end

check_root('4,5,6,7')