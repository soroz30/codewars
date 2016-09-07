def ghostbusters(building)
  building.match(/\s+/) ? building.gsub(/\s+/, "") : "You just wanted my autograph didn't you?"
end

###############

def ghostbusters(building)
  return "You just wanted my autograph didn't you?" unless building[' ']
  building.delete(' ')
end