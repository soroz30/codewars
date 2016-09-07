def calculate(string)
  operator = string.match(/(loses|gains)/)[1]
  numbers = string.scan(/\d+/).map(&:to_i)
  operator == "gains" ? numbers.inject(:+) : numbers.inject(:-)
end

##############

def calculate(string)
  first, second = string.scan(/\d+/).map(&:to_i)
  string.include?("gain") ? first + second : first - second
end