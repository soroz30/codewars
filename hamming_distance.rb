def hamming_distance(a,b)
  a.split('').each_index.inject(0) {|sum, index| a[index] != b[index] ? sum += 1 : sum = sum}
end

#####################

def hamming_distance(a,b)
  a.chars.zip(b.chars).count { |l, r| l != r }
end