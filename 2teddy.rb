#=begin
Build a program that randomly generates and prints Teddy's' age. 
To get the age, you should generate a random number between 20 and 200.

Example Output:
Teddy is 69 years old!
=end
#=begin PEDAC
interpolate rand(20..200)
=end
#=begin MY CODE WORKS
puts "Teddy is #{rand(20..200)} years old!"
=end
#=begin FE
Modify this program to ask for a name, and then print the age for that person. 
For an extra challenge, use "Teddy" as the name if no name is entered.

puts "What is your name?"
name = gets.chomp
name = "Teddy" if name == ''
puts "#{name.capitalize} is #{rand(20..200)} years old!"

