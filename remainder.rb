def remainder(dividend,divisor)
  p (0..dividend).to_a.reverse
  p dividend - (0..dividend).to_a.reverse.detect {|ele| ele / divisor.to_f == divisor.to_f} 
end

remainder(10, 2)