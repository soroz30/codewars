NUMBERS = %w(zero one two three four five six seven eight nine ten)
OPERATORS = %w(plus minus times divided)

def mathprase(number_of_operations)
  operations = [NUMBERS.sample]
  number_of_operations.times do |number|
    operations << OPERATORS.sample
    operations << NUMBERS.sample
  end
  operations.join(' ').gsub('divided', 'divided by')
end


10.times do |_|
  length = (1..20).to_a.sample
  p mathprase(length)
end