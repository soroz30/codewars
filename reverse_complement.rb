def reverse_complement(dna)
   return "Invalid sequence" if dna.match(/[^TCGA]/)
   chars = ["T", "A", "G", "C"]
   dna.chars.map {|ele| p chars.index(ele) % 2 == 0 ? ele = chars[chars.index(ele)+1] : ele = chars[chars.index(ele)-1]}.join('').reverse
end

####################3

COMPLEMENTS = {
  "A" => "T",
  "C" => "G",
  "T" => "A",
  "G" => "C"
}

def reverse_complement(dna)
  dna.chars
     .map { |c| COMPLEMENTS.fetch(c) { return "Invalid sequence" } }
     .reverse
     .join
end