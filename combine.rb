def combine(*args)
  keys_map = args.map {|el| el.keys}.flatten.uniq
  hash = {}
  keys_map.each do |el|
    result = args.inject(0) {|sum,i| i[el] == nil ? sum += 0 : sum += i[el]}
    hash[el] = result
  end
  hash
end

#########

def combine(*obj)
    (1..obj.length-1).inject(obj[0]) {|r, x| r.merge(obj[x]){|key, a, b| a + b}}
end