def where_is_he(p, bef, aft)
  array = (1..p).to_a
  array.select.with_index {|ele, index| index >= 0 + bef && index >= (array.length-1)-aft }.size
end

######################################

def where_is_he(p, bef, aft)
  [p-bef,aft+1].min
end