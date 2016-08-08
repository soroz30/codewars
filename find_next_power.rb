def find_next_power(val, pow_)
  sqrt = val**(1.00/pow_.to_f)
  a = sqrt.ceil**pow_
  a == val ? find_next_power(val+1, pow_) : a
end

find_next_power(8, 3)