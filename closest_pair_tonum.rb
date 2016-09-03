def closest_pair_tonum(n)
    (2..n-1).to_a.reverse.each do |i|
      (1..i-1).to_a.reverse.each do |x|
        if Math.sqrt(i+x) == Math.sqrt(i+x).to_s.to_i.to_f && Math.sqrt(i-x) == Math.sqrt(i-x).to_s.to_i.to_f
          return [i,x]
        end
      end
    end
end