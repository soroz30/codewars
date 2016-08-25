class String
  def whitespace?
    all = " \r\n\t\f\s\v".chars
    self.chars.all? {|i| all.include? i} ? true : false
  end
end


############

class String
  def whitespace?
    self !~ /\S/
  end
end