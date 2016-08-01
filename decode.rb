def decode(message)
  message.split("").map {|ele| ele = (122 - (ele.ord - 97)).chr}.join("").gsub(/\W/, " ")
end

decode("r slkv mlylwb wvxlwvh gsrh nvhhztv")

###########################

def decode(message)
  message.tr('a-z', ('a'..'z').to_a.reverse.join)
end