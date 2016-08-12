def strong_enough( earthquake, age )
  age = (0...age).inject(1000) {|sum, ele| sum * 0.99}
  earthquake.inject(1) {|sum, ele| sum * ele.inject(:+) } > age ? "Needs Reinforcement!" : "Safe!"
end

###################################


def strong_enough( earthquake, age )
  magnitude(earthquake)< (1000 * (0.99**age)) ? "Safe!" : "Needs Reinforcement!"
end #z.

def magnitude(arr)
  arr.map{|v| v.inject(:+) }.inject(:*)
end