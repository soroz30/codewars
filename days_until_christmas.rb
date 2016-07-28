def days_until_christmas(day)
  year = day.year
  year += 1 if day.month == 12 && day.day > 25
  Date.new(year, 12, 25) - day
end

########

def days_until_christmas(day)
  xmas = (day.month == 12 && day.day >= 26) ? Date.new(day.year + 1, 12, 25) : Date.new(day.year, 12, 25)
  (day - xmas).abs
end