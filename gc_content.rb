def gc_content(dna)
  dna=="" ? 0 : dna.downcase.split("").count{|ele| ele == "g" || ele == "c"}*100/dna.length
end

gc_content("")

################

def gc_content(dna)
  if dna.length == 0
    return 0
  end
    
  return ( dna.upcase.count "GC" ) / dna.length.to_f * 100
end