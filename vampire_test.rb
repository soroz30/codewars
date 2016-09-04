def vampire_test(a,b)
  return false if a < 0 && b < 0
  (a*b).to_s.split("").map(&:to_i).sort == [a,b].map{|ele| ele.to_s.split("").map(&:to_i)}.flatten.sort
end

################

def vampire_test(a,b)
  (a.to_s + b.to_s).chars.sort == (a * b).to_s.chars.sort
end