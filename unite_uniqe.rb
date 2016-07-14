def unite_unique(*args)
  nef = []
  nef << args
  p nef.flatten.uniq
end

unite_unique([1, 3, 2], [5, 2, 1, 4], [2, 1])