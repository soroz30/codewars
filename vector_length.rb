def vector_length(vector)
  (((vector[0][0] - vector[1][0]).abs)**2 + ((vector[0][1] - vector[1][1]).abs)**2)**(1.00/2.00)
end

###########

def vector_length(((x1,y1),(x2,y2)))
  Math.sqrt((x1-x2)**2 + (y1-y2)**2)
end