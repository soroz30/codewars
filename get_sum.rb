def get_sum(a,b)
  mini = [a,b].min
  maxi = [a,b].max
  return (mini..maxi).inject(:+)
  # Good Luck!
end

######

def get_sum(a,b)
  return a < b ? (a..b).reduce(:+) : (b..a).reduce(:+)
end