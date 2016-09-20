def list_to_array(list)
  array = []
  array.push(list['value'])
  while list['next'] != nil
    list = list['next']
    array.push(list['value'])
  end
  array
end

################

def list_to_array(list)
  list.nil? ? [] : [list['value']] + list_to_array(list['next'])
end