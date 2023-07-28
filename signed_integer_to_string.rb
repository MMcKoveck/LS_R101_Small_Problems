=begin
In the previous exercise, you developed a method that converts non-negative numbers to strings. 
In this exercise, you're' going to extend that method by adding the ability to represent 
negative numbers as well.

Write a method that takes an integer, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s,
 String(), Kernel.format, etc. You may, however, use integer_to_string from the previous exercise.
Examples:
signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'
=end
=begin PEDAC
get absolute value i * -1 if i < 0
integer_to_string
add '-' if input[0] < 0
=end # PEDAC
#=begin MY CODE
# I2S METHOD
#=begin
# USE THIS EXISTING METHOD
def integer_to_string(number)
  number_hash = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'}
  number_arr = number.digits.reverse
  number_arr.map! {|k,_v| number_hash[k]}
  number_arr.join
end
#=end
=begin
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end
=end
=begin TESTS
def signed_integer_to_string(num)
  absolute = (num < 0) ? (num * -1) : (num)
  string = integer_to_string(absolute)
  #'-' '+' to string[0] 
  #if num < 0 ? string.prepend('-') : string.prepend('+') # STILL GETTING +0
  if num < 0 
    string.prepend('-') 
  end
  if num > 0 
    string.prepend('+')
  end
  string
end
=end # TESTS
# THIS WORKS
def signed_integer_to_string(num)
  absolute = (num < 0) ? (num * -1) : (num)
  string = integer_to_string(absolute)
  string.prepend('-') if num < 0 
  string.prepend('+') if num > 0 
  string
end

#=end # MY CODE
=begin THEIR CODE
def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

This solution is very similar to the string_to_signed_integer method we wrote 2 exercises ago. 
It simply checks the sign of the number, and passes control to integer_to_string for the heavy lifting.

The expression number <=> 0 may look a bit odd; this is ruby's' "spaceship" operator. 
It compares the left side against the right side, then returns 
+1 if the left side is greater than the right, 
-1 if the left side is smaller than the right, 
and 0 if the values are the same. 
This is often useful when you need to know whether a number is positive, negative, or zero.
=end # THEIR CODE
=begin FE
def signed_integer_to_string(num)
  #absolute = (num < 0) ? (num * -1) : (num) # DON'T' NEED THIS LINE ANYMORE BECAUSE
  string = integer_to_string(num.abs) #CODY MCKEEFRY SHOWED ME .abs
  string.prepend('-') if num < 0 
  string.prepend('+') if num > 0 
  string
end
=begin CODY MCKEEFRY'S' CODE
def integer_to_string(num)
  "#{num}"
end

def signed_integer_to_string(num)
  sign_hash = {
    -1 => '-',
    0 => "",
    1 => "+"
  }

  "#{sign_hash[num <=> 0]}#{integer_to_string(num.abs)}"
end
=end # CODY MCKEEFRY'S' CODE
# Refactor our solution to reduce the 3 integer_to_string calls to just one.
# I ONLY HAVE ONE
=end # FE