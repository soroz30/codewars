def splitInteger(num,parts)
  arr = Array.new(parts, num/parts)
  (-(num%parts)..-1).to_a.reverse.each {|i| arr[i] += 1}
  arr
end


#########

def splitInteger(num,parts)
  div, mod = num.divmod(parts)
  [div]*(parts-mod)+[div+1]*(mod)
end