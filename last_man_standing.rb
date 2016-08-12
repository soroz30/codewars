def last_man_standing(n)
  n = (1..n).to_a
  n.delete_if.with_index {|ele, i| i % 2 == 0}.reverse! while n.length > 1
  n[0]
end

###################33



