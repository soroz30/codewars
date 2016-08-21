def eq_sum_powdig(h_max, exp)
  result = []
  (2..h_max).to_a.map(&:to_s).each {|ele| result.push(ele.to_i) if ele.chars.map{|i| i.to_i**exp}.inject(:+) == ele.to_i }
  result
end

eq_sum_powdig(2000, 2)

######################

def eq_sum_powdig(h_max, exp)
  (2..h_max).select do |x|
    x.to_s.split('').inject(0) {|sum, n| sum + n.to_i**exp } == x
  end
end