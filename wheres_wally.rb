def wheres_wally(string)
  match = string.match(/(?<![a-zA-Z0-9.,+':\-;])(Wally)(?!\w)/)
  match == nil ? -1 : match.begin(1)
end

################

def wheres_wally(string)
  string =~ /(?<=^| )Wally\b/ || -1
end