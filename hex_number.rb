class String
  def hex_number?
    return false if self.match(/\n/)
    self.match(/(^0x[0-9a-fA-F]+$|^[\h]+(?!\s)$)/) == nil ? false : true
  end
end


##################

class String
  def hex_number?
    /\A(0x)?\h+\z/ === self
  end
end