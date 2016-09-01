def sum_circles(*args)
  area = args.map{|e| Math::PI * (e.to_f / 2)**2}.reduce(:+).round
  "We have this much circle: #{area}"
end