def cup_volume(d1, d2, height)
 radius_1 = d1.to_f/2
 radius_2 = d2.to_f/2
 ((Math::PI/3)*((radius_1)**2 + (radius_1*radius_2) + (radius_2)**2)*height).round(2)
end

########

def cup_volume(d1, d2, height)
  volume = (( height * Math::PI ) / 12 ) * ( d1 * d1 + d2 * d2 + d1 * d2 )
  return volume.round(2)
end