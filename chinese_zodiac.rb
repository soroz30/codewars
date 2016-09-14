def chinese_zodiac(year)
  "#{$elements[((year-1924)%10)/2]} #{$animals[(year-1924)%12]}" 
end