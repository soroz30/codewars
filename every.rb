class Array
  def every(interval=1, start_index=0)
    result = []
     self.each_with_index do |i,index|
      if (index-start_index)%interval==0 && index >= start_index || index == start_index
        result.push(i)
      end
    end
    result
  end
end

#################

class Array
  def every(interval = 1, start_index = 0)
    (start_index ... size).step(interval).map{ |i| self[i] }
  end
end