p "What is your age?"
age = gets.chomp.to_i
p "At what age would you like to retire?"
retire = gets.chomp.to_i

p "It's 2016. You will retire in " + (2016 + retire - age).to_s
p "You have only " + (retire - age).to_s + " years of work to go!"