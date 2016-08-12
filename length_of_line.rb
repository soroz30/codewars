def length_of_line(a)
    sprintf "%.2f", Math.sqrt((a[1][0]-a[0][0])**2+(a[1][1]-a[0][1])**2)
end

#######################

def length_of_line(a)
  x1, y1, x2, y2 = a.flatten
  "%.2f" % Math.hypot((x2 - x1), (y2 - y1))
end