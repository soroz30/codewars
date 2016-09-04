def contentWeight(bottleWeight, scale) 
  multiplier = Integer(scale.split(" ")[0])
  magnifier = scale.split(" ")[2]
  (bottleWeight/(multiplier + 1)) * (magnifier == "larger" ? multiplier : 1)
end