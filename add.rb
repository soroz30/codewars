def add(*args) 
  args.empty? ? 0 : args.map.with_index {|i,index| i/(1+index.to_f)}.inject(:+).round
end