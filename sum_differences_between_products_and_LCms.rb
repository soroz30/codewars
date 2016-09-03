def sum_differences_between_products_and_LCMs(pairs)
  pairs.empty? ? 0 : pairs.map {|x| (x[0]*x[1]) - (x[0].lcm(x[1]))}.inject(:+)
end

#################

def sum_differences_between_products_and_LCMs(pairs)
  pairs.map{|x,y| x*y - x.lcm(y)}.reduce(0, :+)
end