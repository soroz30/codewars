def factors(x)
  return -1 if !(x.is_a? Integer) || x <= 0
  (1..x).select {|ele| x % ele == 0}.reverse
end

############################

def factors(n)
  return -1 unless valid(n)
  n.downto(1).select { |i| n % i == 0 }
end

def valid(n)
  n.is_a?(Integer) && n > 0
end