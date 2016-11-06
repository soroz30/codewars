def toexuto(str)
  vowels = %w(a e i o u)
  alphabet_characters = ('a'..'z').to_a
  list_of_consonants = alphabet_characters.select { |c| !vowels.include?(c) }
  string = str.chars
  string = string.map do |chr|
    char_downcase = chr.downcase
    if list_of_consonants.include?(char_downcase)
        index_of_vowel = (-(alphabet_characters.index(char_downcase))..0).find do |i|
          vowels.include?(alphabet_characters[-i])
        end
        chr = chr + alphabet_characters[-index_of_vowel]
    end
    chr
  end
  string.join
end

#########

def toexuto(str)
  str.gsub(/[bcdfghj-np-tv-z]/i) { |consonant| consonant + preceding_vowel(consonant) }
end

def preceding_vowel(consonant)
  case consonant.downcase
  when "b".."d" then "a"
  when "f".."h" then "e"
  when "j".."n" then "i"
  when "p".."t" then "o"
  else "u"
  end
end