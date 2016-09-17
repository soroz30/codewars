def find_employees_role(name)
  name = name.split(" ")
  result = $employees.select {|i| i["first_name"] == name[0] && i["last_name"] == name[1]}
  result.empty? ? "Does not work here!" : result[0]['role']
end

#################

def find_employees_role(name)
  $employees.find{|x| x['first_name']+' '+x['last_name']==name}['role'] rescue "Does not work here!"
end