def format_comma_and(array)
  string = array.last
  array.length > 2  ? string.prepend((0..array.length-3).map {|i| array[i]}.join(", ") + ", " + array[array.length - 2] + " and ") : string.prepend(array[array.length - 2] + " and ") if array.length > 1 
  string.nil? ? '' : string
end

format_comma_and( %w(and and and and))

#######

def format_comma_and(array)
  array[0..-2].join(", ") + "#{' and ' if array.size > 1}#{array[-1]}"
end