def candies(s)
  return s.length < 2 ? 0 : s.inject(0) {|sum, ele| sum + (s.max - ele)}
end

candies([1,2,4,6])