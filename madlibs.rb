=begin
Create a simple mad-lib program that prompts for 
a noun, 
a verb, 
an adverb, 
and 
an adjective 
and 
injects those into a story that you create.
Example
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's' hilarious!
gets.chomps x 4
interpolate 4 variables into story
=end

puts "Enter a noun: "
noun = gets.chomp
puts "Enter a verb: "
verb = gets.chomp
puts "Enter an adjective: "
adjective = gets.chomp
puts "Enter an adverb: "
adverb = gets.chomp
puts ""
puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"