def pattern(n)
  (1..n).map{|x| (1..n).to_a.rotate(x-1).join}.join("\n")
end