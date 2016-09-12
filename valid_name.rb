def valid_name(arr)
  return "You must test at least one name." if arr.empty?
  return "Congratulations, you can choose any name you like!" if arr.length == 1
  if (1...arr.length).to_a.reverse.all? {|i| arr[i][0].upcase == arr[i-1][-1].upcase}
    "Congratulations, your baby names are compatible!"
  else
    "Back to the drawing board, your baby names are not compatible."
  end
end

######################

def valid_name(arr)
  return "You must test at least one name." if arr.empty?
  return "Congratulations, you can choose any name you like!" if arr.length == 1
  arr.each_cons(2) do |names|
    return "Back to the drawing board, your baby names are not compatible." unless names[0].downcase.end_with? names[1].downcase[0]
  end
  return "Congratulations, your baby names are compatible!"
end