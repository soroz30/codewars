def fortune(f0, p, c0, n, i)
  result = f0
  (2..n).each do |year|
    result = (result + ((p.to_f/100)*result).floor) - c0
    c0 = (c0 + (i.to_f/100)*c0).floor
  end
  result > 0
end
