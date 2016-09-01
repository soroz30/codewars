def locker_run(lockers)
 return [1] if lockers == 1
 array = Array.new(lockers).map {|e| e = 0}
 (1..lockers).each do |i|
   array = array.map.with_index{|ele, index| (index+1)%i == 0 ? ele = ele += 1 : ele }
 end
 array.map.with_index{|ele,index| index+1 if ele.odd?}.compact
end

locker_run(58140547)

################3


def locker_run x
  (1..sqrt(x)).map{|i|i*i}
end

def locker_run l
  (1..(l**0.5).to_i).map{|n| n*n}
end