def substring_test(str1, str2)
  require "enumerator"
  str1.split("").enum_for(:each_slice, 2).to_a.delete_if {|ele| ele.length < 2}.any? {|ele| str2.downcase.include? ele.join("").downcase}
end

substring_test("Something","Home")
#########

def substring_test(str1, str2)
  check = []
  str1.split("").each_with_index {|item, index| check.push(item + str1[index+1]) if index < str1.length-1 }
  check.any? {|ele| str2.downcase.include? ele.downcase}
end


#######

def substring_test(str1, str2)
  (str1.length() -1).times do |i|
    if str2.downcase.include? str[i..i+1].downcase
      return true
    end
  end
  return false
end