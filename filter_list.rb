def filter_list(l)
  array = []
  l.each {|ele| array.push(ele) if ele.is_a? Integer }
  array
end


##############33

def filter_list(l)
  l.reject {|x| x.is_a? String}
end

#############

def filter_list(l)
  l.select{|i| i.is_a?(Integer)}
end