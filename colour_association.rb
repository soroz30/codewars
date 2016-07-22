def colour_association(arr)
  return arr.map {|ele| h = {ele[0] => ele[1]} }
end

###

def colour_association(arr)
 arr.map {|x| Hash[*x]}
end