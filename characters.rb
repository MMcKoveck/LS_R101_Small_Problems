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
=begin MY CODE
array = []
puts "Please write word or multiple words:"
words = gets.chomp
words.each_char {|x| array << x}
array.delete_if {|x| x == " "}
puts "There are #{array.length} characters in #{words}."
# DOESN'T HAVE THE QUOTES AROUND words !
=end # MY CODE
=begin THEIR CODE
print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."



We don't want to count spaces here, 
so we use String#delete to return a new String with all spaces removed from it. 
The original string stored in input is left intact.'

number_of_characters = input.delete(' ').size # THIS DELETES STRING ELEMENTS " "
                                              # AND RETURNS SIZE OF STRING
puts "There are #{number_of_characters} characters in \"#{input}\"."
                                              # REMEMBER THE \ ESCAPE
=end                                              
#=begin FE - MY CODE FIXED
array = []
puts "Please write word or multiple words:"
words = gets.chomp
words.each_char {|x| array << x}
array.delete_if {|x| x == " "}
puts "There are #{array.length} characters in \"#{words}\"."

=begin MAREK MARTIN'S CODE
puts ("Please write word or multiple words:")
string = gets.chomp
spaceless_string = string.gsub(' ', '')
character_count = spaceless_string.length
puts ("There are #{character_count} characters in '#{string}'.")

USES string.gsub
gsub(pattern, replacement) → new_string
doesn't' have the right quotes
doesn't' need line 4! Can use spaceless_string.length (or .size) interpolation 
instead of character_count
puts ("There are #{spaceless_string.length} characters in \"#{string}\".")
#=end 
#=begin BRANDON COREY'S CODE
puts "Please write a word, or multiple words: "

string = gets.chomp
chars = string.scan /\S/
puts "There are #{chars.length} chsracters in #{string}."

uses regex string.scan /\S/
this is awesome and succint, but i didn't' want to dive into regex yet
/\S/ - A non-whitespace character: /[^ \t\r\n\f\v]/
doesn't' have the right quotes
=end