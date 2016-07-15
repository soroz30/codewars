def check_root(string)
  #your code here
  string = string.split(",")
  return 'incorrect input' if string.size != 4 || string.any? {|ele| ele.to_i.to_s != ele}
  string = string.map {|element| element.to_i}.sort
  return 'not consecutive' if string.length - 1 != string.max - string.min

  square = string.inject(:*) + 1
  result = Math.sqrt(square).round
  return "#{square.to_s}, #{result.to_s}" 
end