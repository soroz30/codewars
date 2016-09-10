class String
  def letter?
    self.match(/\A[a-zA-Z]{1}\z(?!.)/) != nil
  end
end

###########

class String
  def letter?
    /\A[a-z]\z/i === self
  end
end