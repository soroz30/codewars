def cycle(seq)
  seq.each.with_index do |i, index|
    next if seq.count(i) < 2
    next_index = seq[index+1..-1].index(i)
    index_diff = index+next_index
    if seq[index..index_diff] == seq[index_diff+1..index_diff+1+next_index]
      return [index, next_index+1]
    end
  end
  []
end

##############

def cycle(seq)
  seq.each_with_index { |v, i|
    j = seq.index(v)
    return [j, i - j] if j != i
  }
  []
end