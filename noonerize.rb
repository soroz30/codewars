def noonerize(numbers)
  return 'invalid array' if numbers.any? {|ele| ele.is_a? String}
  return numbers.inject(:-).abs if numbers.all? {|ele| ele.to_s.length == 1}
  numbers = numbers.map(&:to_s)
  heads = numbers.map {|ele| ele = ele[0]}.reverse
  numbers.map.with_index {|i, index| (i = heads[index] + i[1..i.length-1]).to_i}.inject(:-).abs
end


#############


def noonerize(numbers)
  numbers.any?{|x| x.is_a? String} ? 'invalid array' : numbers.join(' ').sub(/(.)(.* )(.)(.*)/,'\3\2\1\4').split.map(&:to_i).reduce(:-).abs
end