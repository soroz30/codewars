def validate_word(word)
  #your code here
  return word.upcase!.split("").map {|ele| word.count(ele)}.uniq.length > 1 ? false : true
end

validate_word("Abcabc")