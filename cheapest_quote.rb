def cheapest_quote(n)
  prices = [3.85, 1.93, 0.97, 0.49, 0.10]
  start = 80
  sum = 0
  prices.each do |i|
    start = start/2
    start = 1 if start == 2
    sum += (n/start)*i
    n = (n%start) if start > 1 
  end 
  sum.round(2)
end

##############

def cheapest_quote(n)
  case 
  when n < 5
    n * 0.10
  when n < 10
    0.49 + cheapest_quote(n % 5)
  when n < 20
    0.97 + cheapest_quote(n % 10)
  when n < 40
    1.93 + cheapest_quote(n % 20)
  else
    (n / 40) * 3.85 + cheapest_quote(n % 40)
  end.round(2)
end