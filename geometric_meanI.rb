def geometric_meanI(arr)
  bad = arr.select {|ele| !(ele.is_a? Integer) || ele <= 0}.length
  return 0 if arr.length > 10 && arr.length*0.1 <= bad || arr.length < 10 && bad > 1
  arr.select {|ele| ele.is_a?(Integer) && ele >= 0}.inject(:*)**(1.00/(arr.length-bad).to_f)
end

geometric_meanI([2, 3, 4, 6, -5])