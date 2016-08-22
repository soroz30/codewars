def power_of_two?(x)
  Math.sqrt(x).to_s[-2..-1] == ".0" ? true : false
end