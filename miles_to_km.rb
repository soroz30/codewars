def mpg2lp100km(mpg)
  (100*3.785411784 / (mpg*1.609344)).round(2)
end

def lp100km2mpg(lp100km)
  ((100/1.609344) / (lp100km/3.785411784)).round(2)
 end


 ###########################3

 def mpg2lp100km(mpg)
  (235.2145833333333 / mpg).round(2)
end

def lp100km2mpg(lp100km)
  (235.2145833333333 / lp100km).round(2)
 end