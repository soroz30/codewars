def isTriangle(a,b,c)
   [a,b,c].min(2).inject(:+) > [a,b,c].max ? true : false 
end

##########

def isTriangle(a,b,c)
   a, b, c = [a, b, c].sort
   a + b > c
end