class BatmanQuotes
  def self.get_quote(quotes,hero)
    index = hero.match(/\d+/)[0].to_i
    heroes = {"R" => "Robin", "B" => "Batman", "J" => "Joker"}
    "#{heroes[hero[0]]}: #{quotes[index]}"
  end
end

##########################

class BatmanQuotes
  def self.get_quote(quotes, hero)
    {'R' => 'Robin', 'J' => 'Joker', 'B' => 'Batman'}[hero[0]] + ': ' + quotes[hero[/\d+/].to_i];
  end
end