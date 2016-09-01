def spoonerize(words)
  first_letters = words.match(/^(\w)\w+\s(\w)/)[1..2].reverse!
  words.split(" ").map.with_index {|ele, i| ele = first_letters[i] + ele[1..-1]}.join(" ")
end

##########################

def spoonerize(words)
  words.gsub(/(.)(.* )(.)(.*)/,'\3\2\1\4')
end