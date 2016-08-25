def friday_13th?(year)
  friday_13th = 0
  (0..12).each do |month|
    friday_13th += 1 if Date.new(year, month, 12).wday == 5
  end
  friday_13th
end

p friday_13th(2015)