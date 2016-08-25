class Array
  def remove_(integer_list, values_list)
     integer_list.select {|el| !(values_list.include? el)}
  end
end

################

class Array
  def remove_(integer_list, values_list)
    integer_list - values_list
  end
end