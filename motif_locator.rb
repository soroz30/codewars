def motif_locator(sequence, motif)
  list = []
  sequence.split("").each_with_index {|n, index| list.push(index+1) if sequence[index...index+motif.length] == motif}
  list
end

################

def motif_locator(sequence, motif)
  [].tap { |matches|
    while offset = sequence.index(motif, matches.last.to_i)
      matches << offset + 1
    end
  }
end