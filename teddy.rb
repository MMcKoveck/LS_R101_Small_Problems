=begin MY CODE
age = rand(20..200)
puts "Teddy is #{age} years old!"
=end # MY CODE

=begin # THEIR CODE IS EXACTLY THE SAME
age = rand(20..200)
puts "Teddy is #{age} years old!"

Discussion:
Our solution uses Kernel#rand with a range (20..200) as an argument. 
This use is described in the documentation for rand, 
although it is kind of an afterthought.

Nevertheless, the use of a range to limit the output value is an enormous help here,
 so we use it to generate Teddy's age. 
 Afterward, all we have to do is print the result.

Further Exploration

Modify this program to ask for a name, and then print the age for that person. 
For an extra challenge, use "Teddy" as the name if no name is entered.'
=end #THEIR CODE

puts "What is your name?"

name = gets.chomp.capitalize!
name = "Teddy" if name == nil # I CAN'T FIND A DEFAULT ARGUMENT!!
age = rand(20..200)
puts "#{name} is #{age} years old!"