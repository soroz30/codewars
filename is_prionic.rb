def is_pronic(n)
  (0..n).map {|n| n * (n+1)}.any? {|i| i == n}
end