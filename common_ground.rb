def common_ground(s1,s2)
  result = (s2.split(" ") & s1.split(" ")).join(" ")
  result.empty? ? "death" : result
end