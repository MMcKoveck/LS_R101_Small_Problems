=begin
The String#to_i method converts a string of numeric characters 
(including an optional plus or minus sign) to an Integer. 
String#to_i and the Integer constructor (Integer()) behave similarly. 
In this exercise, you will create a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate number as an integer. 
You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, 
  nor should you worry about invalid characters; assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby 
to convert a string to a number, such as String#to_i, Integer(), etc. 
Your method should do this the old-fashioned way and 
  calculate the result by analyzing the characters in the string.

Examples:
string_to_integer('4321') == 4321
string_to_integer('570') == 570

          UH OH
=end
=begin PEDAC
def method(string)
  slice the string into characters
  '1234'.split('')
=> ["1", "2", "3", "4"]
or each_char
  count according to range
  return count as integer
  apply char to new array
  condense array

  if you can't' do a range, maybe go the long way and build a hash
    "1": 1, "2": 2, "3": 3
#=end # PEDAC
=begin MY CODE
def string_to_integer(string)
  number_hash = {'0': 0, '1': 1, '2': 2, '3': 3, '4': 4, '5': 5, '6': 6, '7': 7, '8': 8, '9': 9}
  string_arr = string.split('')
  symbol_arr = string_arr.map {|index| index.to_sym}
  number_arr = []
  #number_arr << number_hash.each{|k, v| symbol_arr.include?(k)}
  #number_arr << symbol_arr.include?(number_hash.each{|k,v| v})
  number_arr << number_hash.has_key?(symbol_arr) == false
  number_arr << number_hash.has_key?(symbol_arr.map)
  number_arr << number_hash.each {|k,v| k == symbol_arr.map}
  number_arr << number_hash.each {|k,v| v if (k == symbol_arr.map)}
  string_arr.map.with_object({}) {|k,h| h[k] = number_hash[k.to_sym]}
  => {"1"=>1, "2"=>2, "3"=>3, "4"=>4}
  symbol_arr.map.with_object({}) {|k,h| number_hash[k]}
  symbol_arr.map {|k,_v| number_hash[k]}
  number_arr.join
end

def string_to_integer(string)
  number_hash = {'0': 0, '1': 1, '2': 2, '3': 3, '4': 4, '5': 5, '6': 6, '7': 7, '8': 8, '9': 9}
  string_arr = string.split('')
  symbol_arr = string_arr.map {|index| index.to_sym}
  number_arr = []
  number_arr << symbol_arr.map {|k,_v| number_hash[k]}
  number_arr#.join
end
=end #TEST CODE
#THIS WORKS
def string_to_integer(string)
  number_hash = {'0': 0, '1': 1, '2': 2, '3': 3, '4': 4, '5': 5, '6': 6, '7': 7, '8': 8, '9': 9}
  string_arr = string.split('')
  symbol_arr = string_arr.map {|index| index.to_sym}
  symbol_arr.map! {|k,_v| number_hash[k]}
  symbol_arr.inject{|a,i| a * 10 + i}
end

=begin NOTES
# REALLY EXAMINE map AND inject
Clever -- took me a minute to work out what's' going on here. 
The value of the accumulator a after each element in the [1,2,3] is evaluated, 
respectively, is: 0*10+1 = 1; then 1*10+2 = 12; then 12*10+3 = 123. – 
Jon Schneider
 Dec 8, 2021
=end
#=begin THEIR CODE
# NOTICE THE ALL CAPS HASH
 DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

As usual, this isn't' the shortest or even the easiest solution to this problem, 
but it's' straightforward. 
The big takeaway from this solution is our use of the DIGITS hash to 
convert string digits to their numeric values. 
This technique of using hashes to perform conversions is a common idiom 
that you can use in a wide variety of situations, 
often resulting in code that is easier to read, understand, and maintain.

The actual computation of the numeric value of string is mechanical. 
We take each digit and add it to 10 times the previous value, 
which yields the desired result in almost no time. 
For example, if we have 4, 3, and 1, we compute the result as:

10 * 0 + 4 -> 4
10 * 4 + 3 -> 43
10 * 43 + 1 -> 431
=end # THEIR CODE
#=begin FE

Write a hexadecimal_to_integer method that 
converts a string representing a hexadecimal number to its integer value.
Example:
hexadecimal_to_integer('4D9f') == 19871
# EXPLORE HEXADECIMAL
