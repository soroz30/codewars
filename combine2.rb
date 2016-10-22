def combine(*args)
  max_length = args.map {|i| i.length}.max
  result = []
  (0...max_length).each do |i|
     args.each do |arr|
       result << arr[i] unless arr[i].nil?
     end
  end
  result
end

##########

def combine(*args)
  Array.new(args.max_by(&:length).length).zip(*args).flatten.compact
end
