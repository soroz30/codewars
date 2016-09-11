def remainder(dividend,divisor)
  return dividend - divisor if dividend<divisor
  return nil if divisor == 0
  dividend - (dividend/divisor)*divisor
end

###############


def remainder(x,y)
  x-x/y*y
end