def number_to_ordinal(number)
  return '0' if number == 0
  rules = { 1 => 'st', 2 => 'nd', 3 => 'rd'}
  rules.default = 'th'
  number.to_s + ((number % 100).between?(11,13) ? 'th' : rules[number % 10])
end

def number_to_ordinal(number)
  number = number.to_s
  case
    when number == '0' then number
    when number[-2] == '1' then "#{number}th"
    when number[-1] == '1' then "#{number}st"
    when number[-1] == '2' then "#{number}nd"
    when number[-1] == '3' then "#{number}rd"
    else "#{number}th"
  end
end