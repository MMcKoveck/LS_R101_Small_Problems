=begin
Mad libs are a simple game where you create a story template with blanks for words. 
You, or another player, then construct a list of words and place them into the story, 
creating an often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a verb, an adverb, 
and an adjective and injects those into a story that you create.

Example:
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's' hilarious!
=end
=begin PEDAC
make a series of questions
store each answer as a string variable
store 3 mini stories in an array
output a sample of the array with the answers interpolated THROUGHOUT

EX 1 do you verb your adjective noun adverb? That's' hilarious!
   2 how adverb adjective is your noun verb?
   3 adverb verb the adjective noun!

=end
#=begin MY CODE
puts "Enter a noun:"
noun = gets.chomp
puts "Enter a verb:"
verb = gets.chomp
puts "Enter an adjective:"
adjective = gets.chomp
puts "Enter an adverb:"
adverb = gets.chomp

answers = [
  "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's' Hilarious!",
  "How #{adverb} #{adjective} is your #{noun} #{verb}? Really?!",
  "#{adverb.capitalize} #{verb} the #{adjective} #{noun}! OR ELSE!"
]
puts "Here is your result:"
puts answers.sample
#=end #MY CODE