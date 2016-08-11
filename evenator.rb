def evenator(s)
  s.tr('.,?!_','').split.map {|word| word.length.odd? ? word + word[-1] : word}.join(' ')
end
evenator('tHiS sEnTeNcE iS eVeN.')