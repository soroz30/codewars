def disemvowel(str)
  str.gsub(/[aeiouAEIOU]/, "")
end


#########

def disemvowel(str)
  str.delete('aeiouAEIOU')
end