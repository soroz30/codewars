def unique(integers)
  integers.each do |ele|
    while integers.index(ele) != integers.rindex(ele)
      integers.delete_at(integers.rindex(ele))
    end
  end
  integers
end

#########

def unique(integers)
  integers & integers
end