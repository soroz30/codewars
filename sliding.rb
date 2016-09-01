def sliding (nums, k)
  nums.map.with_index {|ele,index| k+index>nums.length ? nil : nums[index...index+k].max}.compact
end

###################3

def sliding(nums, k)
  return [] if k < 0
  nums.each_cons(k).map(&:max)
end