def maskify(cc)
  require 'enumerator'
  cc.length>4 ? cc.split('').map.with_index{|item,index|index<cc.length-4 ? item="#":item=item}.join("") : cc
end



######################


def maskify(cc)
  cc.gsub(/.(?=....)/, '#')
end