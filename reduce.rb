def reduce(fraction)
    n1, d1 = fraction[0], fraction[1]
    divisor = (1..fraction.min/2).to_a.reverse.find {|i| n1%i==0&&d1%i==0}
    return [n1/divisor, d1/divisor] # a proper fraction
end

###################


def reduce(fraction)
  gcf = fraction[0].gcd(fraction[1])
  fraction.map {|n| n / gcf }
end

def reduce(fraction)
  gcf = fraction[0].gcd(fraction[1])
  fraction.map {|x| x / gcf}
end