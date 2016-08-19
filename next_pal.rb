def next_pal(val)
  loop do
    val = val + 1 
    break if val.to_s == val.to_s.reverse
  end
  val
end

##########

def next_pal(val)
  return val if val.to_s.reverse.to_i == val while val += 1
end