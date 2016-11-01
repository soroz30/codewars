def contains_all?(haystack, needle)
  needle.all? do |i|
    selected = haystack.select { |j| j.class == i.class }
    selected.any? { |_| selected.count(i) >= needle.count(i) }
  end
end


############


def contains_all?(haystack, needle)
   needle.all? { |n| count_eql(needle, n) <= count_eql(haystack, n) }
end

def count_eql array, n
    array.count { |c| c.eql? n} 
end