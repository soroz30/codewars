def power_of_4(number)
  Math.sqrt(number).to_s[-2..-1] == ".0" ? puts(true) : puts(false)
end

power_of_4(1024)