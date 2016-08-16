def new_avg(arr, newavg)
  result = (arr.length + 1) * newavg - arr.reduce(0, :+)
  result <= 0 ? (raise ArgumentError) : result.ceil
end