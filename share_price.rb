def share_price(invested, changes)
  for i in (0...changes.length)
    invested += invested*changes[i].to_f/100
  end
  sprintf('%.2f', invested)
end

##################3

def share_price(invested, changes)
  "%.2f" % changes.reduce(invested){|price, percent| price * (100+percent) / 100.0}
end