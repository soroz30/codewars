def factorial(n)
  n.to_i > 0 ? (1..n).inject(:*) : n == 0 ? 1 : nil
end