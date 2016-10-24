def string_parse string
  return "Please enter a valid string"  unless string.is_a? String
  string.gsub(/(.)\1(\1{1,})/, '\1\1[\2]') 
end