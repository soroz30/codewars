class Array
  def reduce func, sum = self.shift
    self.each { |val| sum = func.call(sum, val)}
    sum
  end
end