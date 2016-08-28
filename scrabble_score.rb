def scrabble_score(str)
  p str.chars.map{|i| i.upcase}.delete_if{|i| i == " "}.inject(0) {|sum,i| sum += $dict[i]}
end