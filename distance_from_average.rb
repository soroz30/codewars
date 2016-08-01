def distances_from_average(arr)
  avg = (arr.inject(:+).to_f/arr.length.to_f).round(2)
  arr.map {|ele| (avg - ele).round(2) }
end

distances_from_average([55, 95, 62, 36, 48])

##########################

def distances_from_average(arr)
  avg = arr.reduce(:+)/arr.size.to_f # speed up the code
  arr.map{ |el| (avg - el).round(2) } # solve problem with numbers like '4.200000000000003'
end