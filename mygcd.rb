def mygcd(a, b)
    nums = [a,b].sort!
    rm   = nums[1] % nums[0]
    
    rm > 0 ? mygcd(rm, nums[0]) : nums[0]
 
end

mygcd(35,15)

###############


def mygcd(x,y)
  y === 0 ? x : mygcd(y, x % y)
end