def replace(hash, phrase)
  hash.each {|key, value| phrase.gsub!(/#{key}/, "#{value}") if phrase.match(/#{Regexp.escape(key)}/)}
end

def gym_slang(phrase)
  hash = {"probably" => "prolly", "i am" => "i'm", "instagram" => "insta", "do not" => "don't", "going to" => "gonna", "combination" => "combo"}
  hash_capitalize = {}
  hash.each {|key, value| hash_capitalize[key.capitalize] = value.capitalize}
  [hash, hash_capitalize].each {|ele| replace(ele, phrase)}
  phrase
end

##################


def gym_slang(phrase)
  phrase.gsub(/((?i:p))robably/, '\1rolly')
        .gsub(/((?i:i)) am/, '\1\'m')
        .gsub(/((?i:i))nstagram/, '\1nsta')
        .gsub(/((?i:d))o not/, '\1on\'t')
        .gsub(/((?i:g))oing to/, '\1onna')
        .gsub(/((?i:c))ombination/, '\1ombo')
end