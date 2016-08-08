def remainder(dividend,divisor)
  p dividend - divisor if dividend<divisor
  p dividend - (0..dividend).to_a.reverse.detect {|ele| (ele.to_f / divisor.to_f).to_s[-1] == "0"} 
end

remainder(3,2)
#################################

def remainder(x,y)
  x-x/y*y
end