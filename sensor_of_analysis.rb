def sensor_analysis(sensor_data)
  average =  sensor_data.inject(0) {|sum, ele| sum += ele[1]}/sensor_data.length
  sum = sensor_data.inject(0) {|sum, ele| sum += (ele[1]-average)**2}
  variance = sum/(sensor_data.length - 1).to_f
  deviation = Math.sqrt(variance)
  [average.round(4), deviation.round(4)]
end