=begin
Write a method that takes a string argument, 
and returns true if all of the alphabetic characters inside the string are uppercase, 
false otherwise. Characters that are not alphabetic should be ignored.

ex:
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

=end
=begin PEDAC
take input string
upcase it and compare it to original

=end # PEDAC
#=begin MY CODE
def uppercase?(string)
  string == string.upcase
end
#=end # MY CODE