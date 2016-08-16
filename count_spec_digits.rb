class List
  def count_spec_digits(integer_list, digit_list)
    ints=integer_list.map{|el| el.to_s}.join("")
    digit_list.map{|dig| [dig, ints.count(dig.to_s)]}
  end
end