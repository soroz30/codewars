def powers(list)
  a = []
  for i in 0...list.length+1
    a.push(list.combination(i).to_a)
  end
  p a.flatten(1).length
end

####################

def powers(list)
  2 ** list.length
end
