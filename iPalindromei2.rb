=begin
Write another method that returns true if the string passed as an argument 
is a palindrome, false otherwise. 
This time, however, your method should be case-insensitive, 
  and it should ignore all non-alphanumeric characters. 
  If you wish, you may simplify things by calling the palindrome? 
  method you wrote in the previous exercise.
Examples:
real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false
=end
=begin PEDAC

downcase it
maybe remove nonalphanumerics
strip? or slice? or?
/[[:alnum:]]/ - Alphabetic and numeric character
/[[:graph:]]/ - Non-blank character (excludes spaces, control characters, and similar)
/[[:punct:]]/ - Punctuation character
/[[:space:]]/ - Whitespace character ([:blank:], newline, carriage return, etc.)

or assign all alphanumerics only to a new variable?
compare reversed new variable with input
=end # PEDAC
#=begin MY CODE
def palindrome?(input)
  input == input.reverse
end
def real_palindrome?(r_input)
  skinny = r_input.downcase
  skinny.gsub!(' ', '')
  skinny == /[[:alnum:]]/.match(r_input)
  palindrome?(skinny)
end

# UGH DOESN'T REALLY WORK. KINDOF DOES. 
# I DON'T THINK THE /[[:alnum:]]/.match(r_input) REALLY DOES ANYTHING
# THIS NEEDS MUCH FURTHER EXPLORATION
# BUT I DON'T THINK IT'S QUITE THE TIME
#=end # MY CODE
=begin THEIR CODE
def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9') # THIS IS SUPER IMPORTANT
  palindrome?(string)
end

Chances are you reached for a String#gsub here to eliminate the 
non-alphanumeric characters. There's nothing wrong with that,
 but we'll take the opportunity to use and talk about String#delete instead. 
#delete is an interesting method that takes arguments that sort of look like 
regular expressions, and then deletes everything formed by the intersection of 
all its arguments. See the documentation for complete details.

For our purposes, we need to remove the non-alphanumeric characters; 
to do that, we tell delete to delete everything that isn't' a letter or digit. 
We then pass the result to our original palindrome? method to determine if 
the cleaned up string is a palindrome.

FE
Read the documentation for String.delete, 
and the closely related String.count 
(you need to read count to get all of the information you need for delete.)

delete(*selectors) → new_string
Returns a copy of self with characters specified by selectors removed 
(see Multiple Character Selectors):

count(*selectors) → integer
Returns the total number of characters in self that are specified by 
the given selectors (see Multiple Character Selectors):
#=end

Within a character class the hyphen (-) is a metacharacter denoting 
an inclusive range of characters. [abcd] is equivalent to [a-d]. 
A range can be followed by another range, so [abcdwxyz] is equivalent to [a-dw-z]. 
The order in which ranges or individual characters appear inside a 
character class is irrelevant.

/[0-9a-f]/.match('9f') #=> #<MatchData "9">
/[9f]/.match('9f')     #=> #<MatchData "9">
If the first character of a character class is a caret (^) the class is inverted: 
it matches any character except those named.

/[^a-eg-z]/.match('f') #=> #<MatchData "f">
A character class may contain another character class. 
By itself this isn’t useful because [a-z[0-9]] describes the same set as [a-z0-9]. 
However, character classes also support the && operator which performs 
set intersection on its arguments. The two can be combined as follows:

/[a-w&&[^c-g]z]/ # ([a-w] AND ([^c-g] OR z))
This is equivalent to:

/[abh-w]/

=end