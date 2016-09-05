def char_to_ascii(str)
  hash = {}
  str.chars.select{|ele| ele.class == String && ele.match(/\w/)}.uniq.each {|i| hash[i] = i.ord}
  hash == {} ? nil : hash
end

#########################

def char_to_ascii(str)
  return if str.empty?
  Hash[str.scan(/\w/).uniq.map { |char| [char, char.ord] }]
end