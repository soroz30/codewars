def reverse_fun(n)
    p n 
    a =  n.reverse
    (1..a.length).each {|i| a = a[0...i] + a[i..-1].reverse}
    a
end

##############

def reverse_fun(n)
    if (n.length > 1) then
      s = n.reverse
        return s[0] + reverse_fun(s[1..-1])
    else
        return n
    end
end