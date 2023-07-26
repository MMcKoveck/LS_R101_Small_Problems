#=begin
In the previous two exercises, you developed methods that convert simple numeric strings 
to signed Integers. In this exercise and the next, you're' going to reverse those methods.

Write a method that takes a positive integer or zero, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as 
Integer#to_s, String(), Kernel#format, etc. 
Your method should do this the old-fashioned way and construct the string 
  by analyzing and manipulating the number.

Examples:
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'
=end
#=begin PEDAC
Do the same but flip the hash
working with this:
def string_to_integer(string)
  number_hash = {'0': 0, '1': 1, '2': 2, '3': 3, '4': 4, '5': 5, '6': 6, '7': 7, '8': 8, '9': 9}
  string_arr = string.split('')
  symbol_arr = string_arr.map {|index| index.to_sym}
  symbol_arr.map! {|k,_v| number_hash[k]}
  symbol_arr.inject{|a,i| a * 10 + i}
end

=end PEDAC
=begin MY CODE (W/ TESTS)
def integer_to_string(number)
  #number_hash = {0: '0', 1: '1', 2: '2', 3: '3', 4: '4', 5: '5', 6: '6', 7: '7', 8: '8', 9: '9'}
  # 0: '0' doesn't work. gotta use =>
  number_hash = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'}
  number_arr = number.digits.reverse
  #p number_arr
  #symbol_arr = number_arr.map {|index| index.to_sym}
  #p symbol_arr
  number_arr.map! {|k,_v| number_hash[k]}
  number_arr.join
  #symbol_arr.join
end
=end # TESTS
#=begin # JUST THE WORKING CODE, NO TESTS
def integer_to_string(number)
  number_hash = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'}
  number_arr = number.digits.reverse
  number_arr.map! {|k,_v| number_hash[k]}
  number_arr.join
end
#=end
=begin CODY MCKEEFRY CRACKS ME UP!
def integer_to_string(num)
  "#{num}"
end