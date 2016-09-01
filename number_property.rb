require 'prime'
def number_property(n)  
  [Prime.prime?(n), n.even?, n%10==0]
end