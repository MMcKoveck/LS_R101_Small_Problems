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
gets.chomp x 4
interpolate 4 variables into story
=end

=begin FIRST ANSWER
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
=end # FIRST ANSWER
=begin THEIR CODE
  
print 'Enter a noun: '
noun = gets.chomp

print 'Enter a verb: '
verb = gets.chomp

print 'Enter an adjective: '
adjective = gets.chomp

print 'Enter an adverb: '
adverb = gets.chomp

sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

puts [sentence_1, sentence_2, sentence_3].sample

# THEY USED PRINT INSTEAD OF PUTS.
# THEY MADE 3 DIFFERENT USES FOR THE INPUTS AND RANDOMIZED THE OUTPUT.
# CAN MAKE PERSONALIZED BUT RANDOM FORTUNE COOKIES
numbers don't matter because they're input as strings.
blanks leave blanks, so it doesn't really matter 
BUT
    you could loop the question if the length of the input was 0
    advance to next question if input.length > 0

    DO THIS LATER AND CHECK OUT Kernel#format

begin THEIR NOTES
  Discussion

Using string interpolation here instead of concatenation makes it more readable 
and is generally considered more rubyish (especially given that it is a sentence).

The different madlib sentences are written within our Ruby file.
 Another option here, one that is a bit more complicated, 
 would be to read in a text file. 
 Then, we could use Kernel#format to interpolate our 
 noun, verb, adjective, and adverb into this file.
=end
# THIS IS A REWRITE WITH GREETING, INPUT CHECK, AND 3 OUTCOMES
# WATCH FOR VARIABLE SCOPE!
#=begin REWRITE
noun = ''
verb = ''
adjective = ''
adverb = ''
puts "Choose Your Fortune!"
loop do
  puts "Enter a noun: "
  noun = gets.chomp
    break if noun.length != 0
end

loop do
  puts "Enter a verb: "
  verb = gets.chomp
    break if verb.length != 0
end

loop do
  puts "Enter an adjective: "
  adjective = gets.chomp
    break if adjective.length != 0
end

loop do
  puts "Enter an adverb: "
  adverb = gets.chomp
    break if adverb.length != 0
end


madlibs = []
madlib1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
madlibs << madlib1
madlib2 = "Your #{adjective} #{noun} will #{verb} #{adverb}."
madlibs << madlib2
madlib3 = "Don't #{verb} your #{adjective} #{noun} without #{adverb} looking ahead."
madlibs << madlib3
puts ""
puts madlibs.sample
#=end # REWRITE

=begin
maybe instead of 4 loops to check 
one loop with 4 (if variable != 0 next)s
=end
=begin I DON'T LIKE THIS. TOO KLUDGY AND BUGGY
noun = ''
verb = ''
adjective = ''
adverb = ''
puts "Choose Your Fortune!"
loop do
  if noun.length == 0
  puts "Enter a noun: "
  noun = gets.chomp
    next if noun.length != 0
  end

  if verb.length == 0
  puts "Enter a verb: "
  verb = gets.chomp
    break if verb.length != 0
  end

  if adjective.length == 0
  puts "Enter an adjective: "
  adjective = gets.chomp
    break if adjective.length != 0
  end

  if adverb.length == 0
  puts "Enter an adverb: "
  adverb = gets.chomp
    break if adverb.length != 0
  end
end


madlibs = []
madlib1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
madlibs << madlib1
madlib2 = "Your #{adjective} #{noun} will #{verb} #{adverb}."
madlibs << madlib2
madlib3 = "Don't #{verb} your #{adjective} #{noun} without #{adverb} looking ahead."
madlibs << madlib3
puts ""
puts madlibs.sample
=end