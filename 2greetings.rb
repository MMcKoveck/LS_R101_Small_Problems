#=begin
Write a program that will ask for user's' name. The program will then greet the user. 
If the user writes "name!" then the computer yells back to the user.

Examples:
What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?
=end
#=begin PEDAC
ask
if answer[-1] == '!'
  interpolate answer.upcase SCREAMING?
  : regular answer.capitalize
=end
#=begin MY CODE WORKS
puts "What is your name?"
name = gets.chomp
puts name[-1] == '!' ? "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?" : "Hello #{name.capitalize}."

# FORGOT THE EXTRA .chop THIS TIME. GOTTA PAY ATTENTION