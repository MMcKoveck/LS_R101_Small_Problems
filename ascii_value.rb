=begin
Write a method that determines and returns the ASCII string value of a string 
that is passed in as an argument. 
The ASCII string value is the sum of the ASCII values of every character in the string. 
(You may use String#ord to determine the ASCII value of a character.)

Ex:
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0
=end
=begin PEDAC
split string into array
find ascii for each element
add totals
=end # PEDAC
#=begin MY CODE
def ascii_value(string)
  string_array = string.split('')
  value = string_array.map {|x| x.ord}
  value.sum
end
# I KEPT TRYING TO INCREMENT HERE 
# value += string_array.each_char {|x| x.ord}
# but it should have been like this
# string_array.each_char {|x| value += x.ord}
#=end # MY CODE
=begin THEIR CODE
def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end
There isn't' much to say here. We initialize the sum to 0 
(which takes care of the empty string case in addition to giving us a starting value), 
  then add String.ord for every character to that sum. Finally, we return the sum.
# I TRIED THIS WAY FIRST BUT INCREMENTED IN THE WRONG PLACE
# BETTER WITOUT THE ARRAY
# LIKED LEARNING THE .sum METHOD THOUGH
can even put it on the end of the BLOCK
value = string_array.map {|x| x.ord}.sum

try this
def ascii_value(string)
  value = string.each_char {|x| value += x.ord}.sum
end
DIDN'T' WORK
THIS WORKS
def ascii_value(string)
  string_array = string.split('')
  value = string_array.map {|x| x.ord}.sum
end
SO DOES THIS
def ascii_value(string)
  string.sum
end

=end # THEIR CODE
=begin FE
There is an Integer method such that:
char.ord.mystery == char
where mystery is our mystery method. 
Can you determine what method name should be used in place of mystery? 
What happens if you try this with a longer string instead of a single character?
=begin SHAWN GRYCKI'S CODE
char.ord.chr == char
String#ord returns an integer value. Looking on the integer page of the Ruby api, 
we find that chr returns the character represented by the integer value as a string. 
Since String#ord only returns a value for a single character, 
any additional string elements after the first will not be evaluated.
#=end # SHAWN GRYCKI'S CODE
=end # FE