def compare(*args)
  args.each_with_index{|arg, index| args[index] = "" if arg.to_s.match(/[^a-zA-Z]/)}
  args.map {|ele| ele.to_s.upcase.split("").inject(0) {|sum, n| sum + n.ord}}.uniq.length == 1
end

compare(nil, "")