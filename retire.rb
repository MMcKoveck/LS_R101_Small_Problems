
=begin PEDAC
Build a program that displays when the user will retire 
and how many years she has to work till retirement.
EX:
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!'

ask age
ask when
when - age == how long
find current year  time = Time.new.year
add how long 
you have only how long years of work to go!
=end # PEDAC
#=begin MY CODE
puts "What is your age?"
ageNow = gets.chomp.to_i
puts "At what age would you like to retire?"
retireAt = gets.chomp.to_i
yearNow = Time.now.year     #SHOULD BE Time.now.year Time.new.year takes arguments
toGo = retireAt - ageNow

puts "It's #{yearNow}. You will retire in #{yearNow + toGo}"
puts "You only have #{toGo} years of work to go!"

#=end # MY CODE