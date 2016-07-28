def valid_card?(card)
  require 'enumerator'
  p "0" == card.gsub(/ /, "").split("").map(&:to_i).select.with_index{|item,index| item * 2 > 8 && index.odd? }.inject(0) {|sum, n| sum += (n * 2) - 9}.to_s[-1]
end

valid_card?("1234 5678 9012 3452")