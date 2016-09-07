def gap(num)
  zero = num.to_s(2).scan(/(?<=1)0+(?=1)/)
  zero == [] ? 0 : zero.max.length
end

#########

def gap(num)
 a =  num.to_s(2).scan(/0+1/).max_by {|i| i.length} 
 a ? a.length-1 : 0
end