def mark_spot(n)
  return "?" if !(n.to_s =~ /\d+/)
  w, t = n/2 + 4, []
  1.upto(n/2) { |l| t << "#{" "*(n-2*l-1)}X#{" "*(l*4-1)}X\n" }
  "#{t.reverse.join}#{" "*(n/2*2)}X\n#{t.join}"
end