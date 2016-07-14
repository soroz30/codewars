a = 9

def last_man_standing(n)
  ar = (1..n).to_a
  ar.select!.with_index{|_, i| i.odd?}.reverse! until ar.length == 1
  p ar.first
end

last_man_standing(a)