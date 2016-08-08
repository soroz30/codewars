def find_next_square(sq)
  return -1 if Math.sqrt(sq) % 1 != 0
  (sq+1...Float::INFINITY).detect {|n| Math.sqrt(n) % 1 == 0 }
end

#########################

def find_next_square(sq)
  # Return the next square if sq is a perfect square, -1 otherwise
  number = Math.sqrt(sq) + 1
  number % 1 == 0 ? number**2 : -1
end