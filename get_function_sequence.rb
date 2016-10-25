def get_function sequence
  diff = sequence[1] - sequence[0] 
  sequence.each_with_index { |v, i| return 'Non-linear sequence' unless v == sequence[0] + i * diff }
  "f(x) = #{diff}x + #{sequence[0]}".gsub(" 0x + ", " ").gsub("+ -", "- ").gsub(" 1x", " x").gsub("-1x", "-x").gsub(" + 0", "")
end