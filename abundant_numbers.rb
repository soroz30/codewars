def abundant_number?(num)
  (1...num).select {|ele| num%ele == 0}.inject(:+) > num ? true : false 
end