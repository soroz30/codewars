def solution(keys, default_value)
  hash = {}
  keys.each {|el| hash[el] = default_value}
  hash
end

####################

def solution(keys, default_value)
  Hash[keys.map {|key| [key, default_value]}]
end