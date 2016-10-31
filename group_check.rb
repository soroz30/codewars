def group_check(s)
  pattern = /({}|\[\]|\(\))/
  while s.match(pattern)
    s.sub!(pattern, '')
  end
end

group_check("[{}{}())")





def group_check(s)
  counter_1, counter_2, counter_3 = 0, 0, 0
  s.chars.each do |char|
    case char
      when "(" then counter_1 += 1
      when ")" then counter_1 -= 1
      when "[" then counter_2 += 1
      when "]" then counter_2 -= 1
      when "{" then counter_3 += 1
      else
        counter_3 -= 1
    end
    return false if [counter_1, counter_2, counter_3].any? {|i| i<0}
  end
  [counter_1, counter_2, counter_3].any? {|i| i>0} ? false : true
end

group_check(")()((){}[]")

#################

#tutaj wazne jest zeby ten drugi znak wystepowal tylko jak jest za poprzednim

def group_check(s)
  stack = []
  symbols = { '{' => '}', '[' => ']', '(' => ')' }
  s.each_char do |c|
    stack << c if symbols.key?(c)
    return false if symbols.key(c) && symbols.key(c) != stack.pop
  end
  stack.empty?
end