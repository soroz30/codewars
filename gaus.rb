def f(*n)
  n[0].to_i <= 0 || n.empty? || n[0].to_s.to_i != n[0] ? false : (1..n[0]).inject(:+)
end


######################

def f(n=false)
  (n.kind_of?(Integer) && n > 0) ? (n+1) * n /2 : false
end