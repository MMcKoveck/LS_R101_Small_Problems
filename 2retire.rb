#=begin
Build a program that displays when the user will retire and how many years 
she has to work till retirement.

Example:
What is your age? 30
At what age would you like to retire? 70

It's' 2016. You will retire in 2056.
You have only 40 years of work to go!

Use the Time class from the ruby core library.
=end
#=begin PEDAC
ask the questions
save the variables
total = retire - age
find the date
add total to date
interpolate answers
=end
#=begin MY CODE WORKS
puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
retirement = gets.chomp.to_i
t = Time.new
total = retirement - age
puts "It's #{t.year}. You will retire in #{t.year + (total)}"
puts "You only have #{total} years of work to go."
=end
#=begin THEIR CODE
print 'What is your age? '
current_age = gets.to_i

print 'At what age would you like to retire? '
retirement_age = gets.to_i

current_year = Time.now.year
work_years_to_go = retirement_age - current_age
retirement_year = current_year + work_years_to_go

puts "It's #{current_year}. You will retire in #{retirement_year}. "
puts  "You have only #{work_years_to_go} years of work to go!"

In this solution, we use Time.now to get the current date. This returns a Time object. 
The Time class has a fairly useful method, Time.year that gives us the current year. 
From there we can determine the retirement year based on the two inputs and the current year.
=end