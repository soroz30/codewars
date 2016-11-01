def decompose(num)
  sum = []
  diff = 0
  limit = Math.sqrt(num).floor
  (2..limit).each do |i| #podstawa
    changed = false
    (2..limit).each do |j| #potega
      if i**j <= num
        sum[i-2] = j 
        changed = true
      else
        break
      end
    end
    num -= i**sum[i-2] if changed
    break unless changed
  end
  diff = num
  [sum, diff]
end

##############

def decompose(n)
  ks = []
  i = 2
  until i*i > n do
    k = Math::log(n, i).to_i
    ks << k
    n -= i ** k
    i += 1
  end
  [ks, n]
end