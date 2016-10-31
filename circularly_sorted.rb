 require 'pry'

  def circularly_sorted?(array)
    first, second = array[0...array.index(array.min)], array[array.index(array.min)..-1]
    longer, shorter = [first, second].max, [first, second].min
    diff = 0
    if shorter.empty?
      diff = (longer[-1] - longer[-2]).abs
    else
      diff = first.min - second.max
    end
    
    [first, second].each do |arr|
      unless arr.empty?
        arr.each.with_index do |i, index|
          next if arr[index+1].nil?
          binding.pry
          return false unless arr[index+1] - i == diff
        end 
      end
    end
    true
  end

  p circularly_sorted?([20, 39, 87, 0, 1])