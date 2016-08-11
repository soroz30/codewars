def crossover (chromosome1, chromosome2, index)
  pos = chromosome1.length-index+1
  slice = [chromosome2.slice(index,pos), chromosome1.slice(index,pos)]
  [chromosome1, chromosome2].each_with_index {|ele,i| ele[index,pos] = slice[i]}
end


###############

def crossover (c1, c2, i)
  i==0 ? [c2,c1] : [ c1[0..i-1] + c2[i..-1] , c2[0..i-1] + c1[i..-1] ]
end