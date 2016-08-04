def validate_ean(c)
  result = c[0..c.length-2].split("").map(&:to_i).each.with_index.inject(0) {|sum, (n,index)| index.odd? ? sum += n*3 : sum += n*1}
  checksum = nil
  result%10 == 0 ? checksum = 0 : checksum = 10 - (result % 10)
  c.chars.last.to_i == checksum ? true : false  
end

validate_ean("5592024621873")


#################

def validate_ean(c)
 c.chars.map(&:to_i).map.with_index(1){|x,i| i.odd? ? x * 1 : x * 3}.reduce(:+) % 10 == 0
end