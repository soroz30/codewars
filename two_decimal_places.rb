def two_decimal_places(number)
  number.to_s.match(/^-?\d+\.\d{2}/)[0].to_f
end

two_decimal_places(10.1289767789)

###################3

def two_decimal_places(number)
  (number * 100).to_i / 100.0
end