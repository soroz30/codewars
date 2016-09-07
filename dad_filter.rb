def dad_filter(string)
  string.gsub(/,+/, ",").sub(/,?\s*$/, "")
end

###################

def dad_filter(string)
  string.strip.squeeze(',').chomp(',')
end

def dad_filter(string)
string.gsub(/,{2,}/,",").gsub(/,+\Z|,+ +\Z/,"").rstrip
end