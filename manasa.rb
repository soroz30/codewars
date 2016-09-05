n = 3
a = 1
b = 2

def manasa(n, a, b)
  newarray = [a,b].repeated_combination(n-1).to_a
  result = []
  newarray.each do |ele|
    ele.unshift(0)
    result.push(ele.inject(:+))
  end
  result.uniq!
  result.each do |ele|
    print ele, " "
  end
end

manasa(n, a, b)