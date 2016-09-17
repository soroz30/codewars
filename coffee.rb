def search(budget,prices)
  prices.select {|i| i <= budget}.sort.join(",")
end