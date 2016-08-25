def mul(a, b)
  return 0 if b == 0 || a == 0
  return b if a == 1
  multi = b.to_i
  number = a - 1
  number.times do b += multi end
  b
end

# zadac pytanie o ten number czemu tak dziala