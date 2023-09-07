#=begin
A double number is a number with an even number of digits whose left-side digits are 
exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 
444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument, 
unless the argument is a double number; double numbers should be returned as-is.

Examples:
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
? twice(123456789123456789) == 123456789123456789
twice(5) == 10
=end
Note: underscores are used for clarity above. Ruby lets you use underscores when writing long numbers; 
however, it does not print the underscores when printing long numbers. 
Don't be alarmed if you don't see the underscores when running your tests.
#=begin PEDAC
def twice(num)
  #loop
check num % 2 == 0
1st half == 2nd half convert to string and compare
return num : num * 2

=end
#=begin MY CODE WORKS!
  
  # return num * 2 if num % 2 != 0
  
def twice(num)
  half = num.to_s.length / 2
  return num * 2 if num.to_s.length % 2 != 0
  num.to_s[0..(half-1)] == num.to_s[(half)..-1] ? num : num * 2
end
=end
#=begin THEIR CODE
def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '' : string_number[0..center - 1]
  right_side = string_number[center..-1]

  return number if left_side == right_side
  return number * 2
end

Once you understand that what you are looking for is the left and right side to the number, 
all you really need to do is to derive those values and then compare them. 
Now if the logic for getting each side seems complex it is actually probably easier to 
break it down even further.

First turn the number into a string, then find the center of the string. 
Next, create a variable for the right and left sides. Finally compare and return based upon that.

Note that there is an edge case for single digit numbers; in this case, center is calculated as 0. 
If we don't' pay attention to this case, 
we end up setting both left_side and right_side to string_number[0..-1], 
which, in the case of a single character string, is equal to that character.
=end
