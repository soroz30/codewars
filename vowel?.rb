class String
  def vowel?
    self.match(/\A[aeiouAEIOU]{1}\z/) != nil
  end
end

############

class String
  def vowel?
    /\A[aeiou]\z/i === self
  end
end
