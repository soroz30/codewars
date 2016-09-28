def code_for_same_protein?(seq1,seq2)
  # You can use the $codons hash table (this one is pre-loaded)
  def protein_code(seq)
    seq.split("").each_slice(3).map {|i| $codons[i.join("")]}.join("")
  end
  protein_code(seq1) == protein_code(seq2)
end

############

def code_for_same_protein?(s1,s2)
  (0...s1.size).step(3).reduce(0) { |i| return false if $codons[s1[i...i+3]] != $codons[s2[i...i+3]]; i+=3 }
  true
end