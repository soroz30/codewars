def encryption(string)
  p string.chars.map {|letter| $CHAR_TO_MORSE[letter]}.join(" ").gsub(/( )/, '\1  ')
end

encryption("HELLO WORLD")