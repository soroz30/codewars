def letters_substitution string
  modified_string = string.chars.map do |chr| 
    case chr
    when 'a' then 'aRbFR'
    when 'b' then 'LFaLb'
    else chr
    end
  end
  modified_string.join
end

def dragon_recursion n
  return "Fa" if n == 0
  letters_substitution(dragon_recursion(n-1))
end

def Dragon n
  return '' if n.class != Fixnum || n < 0
  recursion_result = dragon_recursion n
  recursion_result.gsub(/a|b/, '')
end

####################

def Dragon n
  return "" unless n.is_a?(Integer) && n >= 0
  str = 'Fa'
  n.times do 
    str.gsub!(/[ab]/, "a" => "aRbFR", "b" => "LFaLb")
  end
  str.gsub!(/[ab]/,'')
end