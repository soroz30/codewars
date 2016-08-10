def generate(length)
  (1..length).map {|i| rand(2)}.join('')
end

############

def generate(length)
  Array.new(length) { ["0", "1"].sample }
end