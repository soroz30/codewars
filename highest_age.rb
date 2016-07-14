def highest_age(group1,group2)
  max_age={'names'=>[],'age'=>0}
  total={}
  for person in group1+group2
    total[person['name']] = (total[person['name']] or 0) + person['age']
    if total[person['name']]>max_age['age']
        max_age['names'] = [person['name']]
        max_age['age'] = total[person['name']]
      elsif total[person['name']] == max_age['age']
        max_age['names'] += [person['name']]
    end
  end
  return max_age['names'].sort[0]
end

highest_age([{'name'=>'kay','age'=>1},{'name'=>'john','age'=>13},{'name'=>'kay','age'=>76}],[{'name'=>'john','age'=>1},{'name'=>'alice','age'=>77}])