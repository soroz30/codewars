def change(cents)
  hash = {25=>0, 10=>0, 5=>0, 1=>0 }
  return hash if cents <= 0
  hash.each do |key, value|
    coins = cents/key
    hash[key] = coins
    cents = cents%key
  end
  hash
end

############

def change(cents)
  change = { 25 => 0, 10 => 0, 5 => 0, 1 => 0 }
  cents <= 0 ? change : change.each_key { |c| change[c] = cents / c; cents = cents % c }
end

def change(cents)
  cents = 0 if cents < 0
  [25, 10, 5, 1].inject({}) { |res, n| res[n], cents = cents.divmod(n); res }
end