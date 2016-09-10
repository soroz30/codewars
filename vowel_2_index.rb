def vowel_2_index(string)
  string.chars.map.with_index {|ele, index| ele.match(/[aeiou]/i) ? index+1 : ele}.join("")
end

############

def vowel_2_index(string)
  string.split(//).map.with_index(1){|x,y| 'aeiouAEIOU'.include?(x) ? y : x}.join
end