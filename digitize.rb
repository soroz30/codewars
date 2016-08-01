def digitize(n)
  n.to_s.split("").map(&:to_i)
end


###########3

def digitize(n)
  n.to_s.chars.map(&:to_i)
end