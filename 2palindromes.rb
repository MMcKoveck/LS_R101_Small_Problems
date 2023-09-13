#=begin
Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

Examples:

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true
=end
#=begin PEDAC BECAME MY CODE WORKS
def palindrome?(string)
  string == string.reverse
end
=end
#=begin FE 
Write a method that determines whether an array is palindromic; 
that is, the element values appear in the same sequence both forwards and backwards in the array.
Now write a method that determines whether an array or a string is palindromic; 
that is, write a method that can take either an array or a string argument, 
and determines whether that argument is a palindrome.
 You may not use an if, unless, or case statement or modifier.
=end

def palindrome?(input)
  input == input.reverse
end