=begin
In the previous exercise, you developed a method that converts simple numeric strings to Integers. 
In this exercise, you'r'e going to extend that method to work with signed numbers.

Write a method that takes a String of digits, and returns the appropriate number as an integer. 
The String may have a leading + or - sign; if the first character is a +, 
your method should return a positive number; if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.

You may assume the string will always contain a valid number.

You may not use any of the standard conversion methods available in Ruby, such as String#to_i, 
Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.

Examples:
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100
=end
=begin PEDAC
establish previous s2i method
establish counter for negative state
check for sign and save result
strip sign
apply s2i method
apply negative if necessary
=end
#=begin MY CODE
def string_to_integer(string)
  number_hash = {'0': 0, '1': 1, '2': 2, '3': 3, '4': 4, '5': 5, '6': 6, '7': 7, '8': 8, '9': 9}
  string_arr = string.split('')
  symbol_arr = string_arr.map {|index| index.to_sym}
  symbol_arr.map! {|k,_v| number_hash[k]}
  symbol_arr.inject{|a,i| a * 10 + i}
end

# THIS SHOULD WORK WTH! RETURNING NIL!
def string_to_signed_integer(input)
  negative = 0
  input.delete_prefix!('+') if input[0] == '+'
  negative += 1 if input[0] == '-'
  input.delete_prefix!('-') if input[0] == '-'
  result = string_to_integer(input)
  (negative > 0) ? -result : result
end

=begin DEBUG
def string_to_signed_integer(input)
  negative = 0
  input.delete_prefix!('+') if input[0] == '+'
  p input
  negative += 1 if input[0] == '-'
  p negative
  input.delete_prefix!('-') if input[0] == '-'
  p input
  result = string_to_integer(input)
  p result
  (negative < 0) ? result : -result # THIS IS ALL BACKWARDS
end
=end
=begin THEIR CODE
def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

In this solution, we opt to reuse the string_to_integer method from the previous exercise. 
Why waste effort reinventing the wheel? (Oh, wait. That's exactly what we're doing, isn't' it?)

This solution is reasonably easy: it simply looks at the first character of string. 
If the character is a -, the negative of the number represented by the rest of the string is returned. 
If it is not a -, it returns the value of the rest of the string as a number, 
skipping over a leading + if present.

Note that we rely on the fact that case returns the value returned by the 
when (or else) branch selected.

***The most interesting aspect of this method is the use of string[1..-1] 
to obtain the remainder of the string after a leading + or -. 
This notation simply means to extract the characters starting at index 1 of the string 
(the second character) and ending with the last character (index -1).***
=end
=begin FE
In our solution, we call string[1..-1] twice, and call string_to_integer three times. 
This is somewhat repetitive. Refactor our solution so it only makes these two calls once each.

*** MINE ALREADY ONLY DOES IT ONCE, BUT IS LONGER
=end
=begin DARRAGH O'CARROLL'S CODE (IT'S' BEAUTIFUL)

def string_to_signed_integer(string)
  number = string_to_integer(string.delete('+-'))
  string[0] == "-" ? -number : number    
end
=end

=begin MY REFACTORED CODE

def string_to_signed_integer(input)
  number = string_to_integer(input.delete('+-'))
  input[0] == '-' ? -number : number
end

# WOW
=end
=begin TRAM NGUYEN'S ALSO AWESOME CODE
# THE LONG SHORT WAY
def string_to_signed_integer(str)
  num = string_to_integer(str.delete('^0-9')) # '^0-9' instead of '+-'
  str[0] == '-'? -num : num
end
=end