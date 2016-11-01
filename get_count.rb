require 'pry'

def get_count(n)
    nstr = n.to_s
    count=0
    (1..nstr.length-1).each do |i|
      (0..nstr.length-i).each do |j|
        binding.pry
        n%nstr[j,i].to_i==0 ? count+=1 : count=count if nstr[j,i].to_i!=0
      end
    end
    count
end

p get_count(1234)