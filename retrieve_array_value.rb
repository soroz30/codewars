def solution(items, index, default_value)
  items.fetch(index) rescue default_value
end

#######

def solution(items, index, default_value)
  items.fetch(index, default_value)
end