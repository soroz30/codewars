def computer(english)
  nums = {
    'zero' => 0
    'one' => 1
    'two' => 2
    'three' => 3
    'four' => 4
    'five' => 5
    'six' => 6
    'seven' => 7
    'eight' => 8
    'nine' => 9
  }

  nums.each do |word, num|
    english.gsub!(word, num.to_s)
  end

  words = english.split(' ')
  words.delete('by')

  loop do
    break if !words.include?('times') && !words.include?('divided')

    index_of_op = words.index('divided') || words.index('times')
    first = words[index_of_op - 1].to_i
    operation = words[index_of_op]
    second = words[index_of_op + 1].to_i

    solution = case operation
               when 'times'
                first * second
               when 'divided'
                first / second
               end 

    words.delete_at(index_of_op - 1)
    words.delete_at(index_of_op - 1)
    words[index_of_op - 1] = solution
  end

  loop do
    break if !words.include?('plus') && !words.include?('minus')

    first_three = words.take(3)

    first = first_three[0].to_i
    operation = first_three[1]
    second = first_three[2].to_i

    solution = case operaton
    when 'plus'
      first + second
    when 'minus'
      first - second
    end
  end

end