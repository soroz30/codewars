def letter_frequency(text)
  chars = text.downcase.scan(/[a-zA-Z]/).sort
  chars.map { |x| [x, chars.count(x)] }.uniq
  .sort_by { |y| [-y[1], y[0]] }
end


def letter_frequency(text)
  text = text.downcase.scan(/[a-zA-Z]/)
  h = Hash.new(0)
  text.each { |c| h[c] += 1 }
  ary = h.to_a
  ary.sort { |a,b| b[1] == a[1] ? a[0] <=> b[0] : b[1] <=> a[1] }
end

def letter_frequency(text)
  result = Hash.new(0)
  
  normalized_string = text.downcase.gsub(/[^a-zA-Z]/, '')
  normalized_string.chars.map { |c| result[c] += 1 }  
  
  result.sort_by {|k,v| [-v, k]}
end