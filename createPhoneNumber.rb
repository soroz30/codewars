def createPhoneNumber(numbers)
  "(#{numbers[0..2].join}) #{numbers[3..5].join}-#{numbers[6..9].join}"
end

#############

def createPhoneNumber(array)
  '(%d%d%d) %d%d%d-%d%d%d%d' % array
end

def createPhoneNumber(numbers)
  numbers.join.gsub /(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3'
end