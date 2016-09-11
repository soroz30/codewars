def my_parse_int(string)
  return 'NaN' if string.match(/([a-zA-Zx~]|\d+\.\d+|\d+ \d+)/)
  correct = string.match(/(0+)?(\d+)/)
  correct[2].to_i
end

##########

def my_parse_int(string)
  string.strip.match(/\D+/) ? "NaN" : string.to_i
end

def my_parse_int(string)
  string.match(/\A\s*\d+\s*\Z/) ? string.to_i : "NaN"
end
