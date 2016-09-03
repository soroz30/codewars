def validate message
  var = /^MDZHB\s\d{2}\s\d{3}\s[A-Z]+ \d{2} \d{2} \d{2} \d{2}$/.match(message)
  var == nil ? false : true
end