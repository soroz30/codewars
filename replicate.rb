def replicate(times, number)
    if times >= 1
      number.class == Fixnum ? number = [number] : number.push(number[0])
      replicate(times-1,number)
    else
      number.class == Fixnum ? [] : number
    end
end

#################

def replicate(times, number)
    times > 0 ? [number] + (replicate(times-1, number)) : []
end