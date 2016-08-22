def is_perfect(n)
  return n == 1 ? false : (2..(Math.sqrt(n))).each_with_object([1]) { |x, o| o.push(x, n/x) if (n % x).zero? }.reduce(:+) == n
end
is_perfect(23459879034)