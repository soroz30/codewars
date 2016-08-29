def self_descriptive(num)
  num = num.to_s.chars.map(&:to_i)
  num = num.map.with_index{|i, index| p num.count(index) == i}
  num.all? {|i| i == true}
end

self_descriptive(42101000)

###########################3333

def self_descriptive(num)
  digits = num.to_s.chars.map(&:to_i)
   digits.each_with_index.all? { |d,i| digits.count(i) == d }
end