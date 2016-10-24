def berserk_rater(synopsis)
  sco = synopsis.map{|s| s.downcase.include?('clang') ? s = 5 : s.downcase.include?('cg') ? s = -2 : s = -1}.reduce(:+)
  sco < 0 ?  "worstest episode ever" : sco > 10 ? "bestest episode ever" : sco.to_s
end