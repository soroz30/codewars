VOWELS = ["a", "e", "i", "o", "u"]

def remove_vowels(strings)
  p strings.map do |string|
    chars = string.split("")
    VOWELS.each {|vowel| chars.delete(vowel)}
    chars.join("")
  end
end

remove_vowels(['green', 'yellow', 'black', 'white'])