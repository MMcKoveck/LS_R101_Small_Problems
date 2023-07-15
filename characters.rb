=begin
Write a program that will ask a user for an input of a word or multiple words 
and give back the number of characters. 
Spaces should not be counted as a character.
EX:
input:
Please write word or multiple words: walk
output:
There are 4 characters in "walk".
input:
Please write word or multiple words: walk, don't run
output:
There are 13 characters in "walk, don't run".

=begin PEDAC
query user
array << input
array.reduce
reply with array.length in original input
=end #PEDAC
#=begin MY CODE
array = []
puts "Please write word or multiple words:"
words = gets.chomp
words.each_char {|x| array << x}
array.delete_if {|x| x == " "}
puts "There are #{array.length} characters in #{words}."