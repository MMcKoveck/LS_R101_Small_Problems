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

#=end # MY CODE
