def pattern(n)
  pattern = ""
  (1..n).to_a.map do |i|
    i.times do pattern += i.to_s end
    pattern += "\n" if n > 1 && i < n
  end
  pattern
end

######################

def pattern(n)
  (1..n).map{|x| x.to_s*x}.join("\n")
end