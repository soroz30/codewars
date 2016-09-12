def match_arrays(v, r)
  v.select {|i| r.include?(i)}.length
end

###########

def match_arrays(v, r)
  (v & r).length
end