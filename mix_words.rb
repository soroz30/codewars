def mix_words(string)
  string = string.split(/\b/).map do |word|
    if word.match(/\w+/) && word.length > 3
      shuffled = ''
      text_fragment = word[1...-1]
      loop do
        shuffled = text_fragment.chars.shuffle.join
        break if shuffled != text_fragment
      end
      word = word[0] + shuffled + word[-1]
    end
    word
  end
  string.join
end

####################

def mix_words(string)
  string.gsub(/(\w)(\w+)(\w)/) {|s| $1 + $2.chars.shuffle.join() + $3}
end