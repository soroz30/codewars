def calculateHypotenuse(a,b)
   ('%.3f' % Math.sqrt(a**2+b**2)).to_f
end

############

def calculateHypotenuse(a,b)
  Math.hypot(a, b).round(3)
end