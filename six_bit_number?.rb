class String
  def six_bit_number?
    self.match(/\A([0-9]{1}|[1-5][0-9]|6[0-3])\z/) != nil
  end
end

#######

class String
  def six_bit_number?
    ('0'..'63') === self
  end
end