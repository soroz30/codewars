def drop_cap(str)
  str.split(/\b/).map {|ele| ele.length > 2 ? ele.capitalize : ele}.join("")
end

##############

def drop_cap(str)
  str.gsub(/\w{3,}/,&:capitalize)
end