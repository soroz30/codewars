ORTHUS = { heads: 2, tails: 1 }
HYDRA = { heads: 5, tails: 1 }

def beasts(heads, tails)
  return 'No solutions' if heads.negative? || tails.negative?
  return [0, 0] if heads.zero? && tails.zero?
  (0..tails.to_i).each do |i|
    return [i, tails - i] if ORTHUS[:heads] * i + HYDRA[:heads] * (tails - i) == heads
  end
  'No solutions'
end