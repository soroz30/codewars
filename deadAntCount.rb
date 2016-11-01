def deadAntCount(ants)
  return 0 if ants.nil?
  dead_ants = ants.gsub(/ant/, '')
  %w(a n t).map { |l| dead_ants.count l}.max
end

