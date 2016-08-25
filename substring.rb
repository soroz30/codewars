def substring(word, beginning_num, end_num = nil)
  return word[beginning_num] if !end_num
  array = []
  word.split("").each_with_index do |letter, index|
    array.push(letter) if index >= beginning_num && index <= end_num
  end
  return array.join("")
end

p substring("honey", 0, 2)


def substrings(string)
  result = []

  string.chars.each_with_index do |letter, index|
    position = index + 1

    (string.size - position).times do |n|
      result << substring(string, index, index+n+1)
    end
  end

  results
  
end


def palindromes(string)
  substr = substrings(string)
  complete_array = []
  substr.each do |string|
    complete_array << string if string == string.reverse
  end
end

def largest_palindrome(string)
  results = palindromes(string)
  longest = results[0]
  results.each do |word|
    longest = word if word.size > longest.size
  end
  longest
end