module Math
  def self.degrees(rad)
    "%gdeg" % ((rad / Math::PI) * 180.0).round(2)
  end
  def self.radians(deg)
    "%grad" % ((deg / 180.0) * Math::PI).round(2)
  end
end