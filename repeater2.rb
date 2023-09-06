#=begin
Write a method that takes a string, and returns a new string in which every consonant character 
is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

Examples:
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""
=end
#=begin PEDAC
Do the same as repeater but in the second step use a regex
/[^aeiou\d\W_]/
to dedermine if it should be doubled

# CODE TO USE WORKS!
def double_consonants(string)
  dubs = []
  array = string.chars
  loop do
    dubs << (array[0])
    dubs << (array[0] if (array[0]) =~ (/[^aeiou\d\W_]/))
    array.shift
    break if array.size == 0
  end
  dubs.join
end

#=begin THEIR CODE
CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end

This exercise is nearly identical to the previous exercise, 
so it should come as no surprise that the solution is also similar. 
The main difference here is that we need to check each character to see if it is a consonant. 
There are lots of ways to do this: we have chosen to use an array of the lowercase consonants, 
and just check each character to see if it is in that array. 
Of course, we do need to account for uppercase consonants as well, 
so we convert each character to lowercase for the test.
=end
