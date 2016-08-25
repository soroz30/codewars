class String
  def signed_eight_bit_number?
    (-128..127).map(&:to_s).include?(self)
  end
end