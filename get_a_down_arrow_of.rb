def half(i, n)
  (1...n-i+1).map{|x| (x%10).to_s}.join
end

def line(i, n)
  h = half(i, n)
  " "*i + h + h.reverse[1..-1]
end

def get_a_down_arrow_of(n)
 puts (0...n).map{|i| line(i, n)}.join "\n"
end

get_a_down_arrow_of(11)
