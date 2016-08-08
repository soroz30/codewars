def get_last_digit(index)
  a, b = 0, 1
  index.times do
    a, b = b, (a+b) % 10
  end
  a
end