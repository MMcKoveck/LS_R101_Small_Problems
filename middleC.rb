=begin
Write a method that takes a non-empty string argument, 
and returns the middle character or characters of the argument. 
If the argument has an odd length, you should return exactly one character. 
If the argument has an even length, you should return exactly two characters.
Examples:
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

find string length
remember zero index!
if odd?  divide by 2 and return appropriate char str[result]
if even? divide by 2 and return 2 appropriate characters str[result - 1, 2]
=end

def center_of(string)
  half = string.length / 2
  string.length.odd? ? string[half] : string[half - 1, 2]
end
  
  
  # DON'T NEED TO DO SOMETHING FOR EVEN WITH A TERNARY
  #even = string.length.even? string[even] 