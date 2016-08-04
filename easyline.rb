def easyline(n)
  if n == 0
    return 0
  elsif n == 1
    return 1
  end
  a = [[1, 1]]
  (0...n-1).each do |i| 
    a[i+1] = []
    a[i].each.with_index {|ele, index| index == 0 ? a[i+1][index] = 1 : a[i+1][index] = ele + a[i][index-1]}
    a[i+1].push(1)
  end
  p a.last
  p a.last.map {|ele| ele * ele}.inject(:+)
end

##################33

def easyline(n)
  (n + 1 .. 2 * n).reduce(1, :*) / (1 .. n).reduce(1, :*)
end