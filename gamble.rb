def gamble(rolls, my_coins, pot)
  rolls.each do |roll|
    case roll
    when 'Gimel'
      my_coins += pot
      pot = 0
    when 'Hei'
      my_coins += pot/2
      pot -= pot/2
    when 'Shin'
      pot += 1
      my_coins -= 1
    end
  end
  my_coins
end

############

def gamble(rolls, my_coins, pot)
  dreidel = {
    Nun: -> { nil },
    Gimel: -> { my_coins += pot },
    Hei: -> { my_coins += (pot /= 2).floor },
    Shin: -> { pot += 1; my_coins -= 1 }
  }
  
  rolls.each { |roll| dreidel[roll.to_sym].call }
  
  my_coins
end