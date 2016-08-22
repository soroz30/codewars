require 'prime'
require 'prime'
def pernicious(n)
  return "No pernicious numbers" if n < 1
  binary_sum = (2..n.floor).map {|i| i.to_s(2).count "1"}
  (2..n).select.with_index {|i,index| Prime.prime?(binary_sum[index])}
end

pernicious(232)


###############

require 'prime'
def pernicious(n)
  
  if n > 2
    a=[]
    2.upto(n) { |i| if Prime.prime?(i.to_s(2).each_char.to_a.count("1")) then a << i end}
    p a
  
  else
  
    p "No pernicious numbers"
  end
end