def checkerboard(size)
  result = (0...size).map do |i|
    if i.even? 
      (0...size).map { |ele| ele.even? ? "[r]" : "[b]" }.join
    else
      (0...size).map { |ele| ele.odd? ? "[r]" : "[b]" }.join
    end
  end
  result.join("\n").push("\n")
end

p checkerboard(5)