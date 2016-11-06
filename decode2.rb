def decode(string)
  return "Input is not a string" unless string.is_a? String
  small_letters_range = ('a'..'z').to_a
  big_letters_range = ('A'..'Z').to_a
  list_of_string_letters = string.chars
  decoded_chars = list_of_string_letters.map do |chr|
    case
    when small_letters_range.include?(chr)
      small_letters_range[25-small_letters_range.index(chr)]
    when big_letters_range.include?(chr)
      big_letters_range[25-big_letters_range.index(chr)]
    else 
      chr
    end
  end
  decoded_chars.join
end

##############

def decode(string)
  return "Input is not a string" unless string.is_a? String
  alph = ('a'..'z').to_a
  alph1 = ('A'..'Z').to_a
  arr = string.split('')
  arr.map! do |x|
    if alph.include? x
      alph[25-alph.index(x)]
    elsif alph1.include? x
      alph1[25-alph1.index(x)]
    else
      x
    end
  end
  arr.join
end

def decode(string)
  string.tr("a-zA-Z", 
            "zyxwvutsrqponmlkjihgfedcbaZYXWVUTSRQPONMLKJIHGFEDCBA") rescue "Input is not a string"       
end