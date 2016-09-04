def type_of_triangle(*args)
  # your code here
  [a,b,c].any?{|i| !i.is_a? Fixnum} || [a,b,c].max >= [a,b,c].inject(:+) - [a,b,c].max ? "Not a valid triangle" : {1 => "Equilateral", 2 => "Isosceles", 3 => "Scalene"}[[a,b,c].uniq.length]  
end

type_of_triangle(9,4,3)

##############

def type_of_triangle(a, b, c)
  return  "Not a valid triangle" if  [a,b,c].any?{|i| i.class != Fixnum} || [a,b,c].min(2).inject(:+) <= [a,b,c].max 
  {1 => "Equilateral", 2 => "Isosceles", 3 => "Scalene"}[[a,b,c].uniq.length] 
end