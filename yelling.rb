=begin PEDAC
Write a program that will ask for user's name. The program will then greet the user. 
If the user writes "name!" then the computer yells back to the user.
Examples:
What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?'

ask name
name = gets.chomp
check string -1 for !
if ! then upcase name in capital string
else hello capitalized name
=end # PEDAC
#=begin MY CODE  
puts "What is your name?"
name = gets.chomp
(name[-1] == '!') ? 
(puts "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?") : 
(puts "Hello #{name.capitalize}.")

=begin
This was a quick one. 
THey want me to explore chop, chomp, chop!, chomp!
=end