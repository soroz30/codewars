def get_counted_necleotides(dna)
  dna = dna.upcase
  {"A" => dna.count('A'), "C" => dna.count('C'), "G" => dna.count('G'), "T" => dna.count('T')}
end

###########

def get_counted_necleotides(dna)
dna.upcase.scan(/\w/).inject(Hash.new(0)){|h, c| h[c] += 1; h}
#dna.chars.group_by(&:chr).map { |k, v| [k, v.size] }
end

def get_counted_necleotides(dna)
  dna.upcase!
  Hash[%w(A C G T).map { |c| [c, dna.count(c)] }]
end

def get_counted_necleotides(dna)
  %w(A C G T).each_with_object({}) { |letter, memo| memo[letter] = dna.upcase.count(letter) }
end

def get_counted_necleotides(dna)
  dna.upcase.chars.each_with_object(
      {'A' => 0, 'C' => 0, 'G' => 0, 'T' => 0}
    ) { |c, h| h[c] += 1 }
end