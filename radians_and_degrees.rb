module Math
  def self.degrees
    "%gdeg" % ((rad / Math::PI) * 180.0).round(2)
  end
  def self.radians
    "%grad" % ((deg / 180.0) * Math::PI).round(2)
  end
end