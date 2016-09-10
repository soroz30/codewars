def filter_numbers(string)
  return string.chars.map{|x| x.match(/[a-zA-Z ]/) ? x : nil}.compact.join("")
end

########

def filter_numbers(string)
  string.gsub(/\d+/,"")
end