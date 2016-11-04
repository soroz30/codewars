def narcissistic?( value )
  string_value = value.to_s.chars
  powers_of_digits = string_value.map {|i| i.to_i**string_value.length }
  sum_of_powers = powers_of_digits.inject(:+)
  sum_of_powers == value
end

##########

def narcissistic?( value )
  value == value.to_s.chars.map { |x| x.to_i**value.to_s.size }.reduce(:+)
end



def narcissistic?( value )
  digits = extract_digits_from(value)  
  value == expected_value_for(digits)
end

def extract_digits_from(number)
  number.to_s.chars.map(&:to_i)
end

def expected_value_for(digits)
  power = digits.size
  digits.inject(0) do |sum, digit|
    sum += digit ** power
  end
end