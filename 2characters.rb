#=begin
Write a program that will ask a user for an input of a word or multiple words 
and give back the number of characters. Spaces should not be counted as a character.

input:
Please write word or multiple words: walk
output:
There are 4 characters in "walk".
input:
Please write word or multiple words: walk, don't' run
output:
There are 13 characters in "walk, don't run".
=end
#=begin PEDAC
ask the ?
gets.chomp a string 
split the string at spaces
rejoin without spaces
char count
interpolate char count and string
array = string.delete!(' ').chars.count
=end
#=begin MY CODE WORKS
puts "Please write word or multiple words: "
string = gets.chomp
count = string.delete(' ').chars.count
puts "There are #{count} characters in \"#{string}\"."
=end
#=begin THEIR CODE
same as mine but used
number_of_characters = input.delete(' ').size
=end
#=begin MY OLD CODE
array = []
puts "Please write word or multiple words:"
words = gets.chomp
words.each_char {|x| array << x}
array.delete_if {|x| x == " "}
puts "There are #{array.length} characters in \"#{words}\"."
# CHUNKY INDEED
=end
