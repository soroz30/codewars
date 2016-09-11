def filter_string(string)
  string.chars.select {|i| i.match(/\d/)}.join("").to_i
end

#########

def filter_string(string)
  string.delete("^0-9").to_i
end