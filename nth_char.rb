def nth_char(words)
  words.map.with_index {|i,index| i[index]}.join('')
end