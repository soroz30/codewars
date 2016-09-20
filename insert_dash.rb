def insert_dash(num)
  num.to_s.gsub(/(?<=[13579])([13579])/, '-\1')
end

####################

def insert_dash(num)
  arr = num.to_s.split("")
  index = 0
  
  while index < arr.length do
    if arr[index].to_i.odd? && arr[index + 1].to_i.odd?
      arr[index] += "-"
    end
    index += 1
  end
  
  arr.join("")
end

#####################

def insert_dash(num)
  #your code here
  num.to_s.split(/(?<=[13579])(?=[13579])/).join('-')
end