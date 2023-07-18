=begin
Write a method that returns true if the string passed as an argument is a palindrome, 
false otherwise. A palindrome reads the same forward and backward. 
For this exercise, case matters as does punctuation and spaces.

EX:
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

=end
=begin PEDAC
get string argument
reverse string
assign to new variable
compare
=end # PEDAC

#=begin MY CODE

def palindrome?(input)
backwards = input.reverse
backwards == input
end

#=end
=begin THEIR CODE

def palindrome?(string)
  string == string.reverse
end

Looks like I added a step
you just need to compare the input with it reversed
you don't need to create and assign the second variable to compare
unless you'll' need it later.
=end
=begin FE
 Now write a method that determines whether an array or a string is palindromic; 
 that is, write a method that can take either an array or a string argument, 
 and determines whether that argument is a palindrome. 
 You may not use an if, unless, or case statement or modifier.

begin PEDAC
reverse and compare arrays
==: 
Returns whether each element in self is == 
to the corresponding element in a given object.  
isn't' it the same?

def palindrome?(input)
  input == input.reverse
end

# IT'S THE SAME!! 
# I THOUGHT I WAS LOSING MY MIND!!
# FTR IT'S NOT ASKING TO CHECK IF STRING ELEMENTS IN THE ARRAY ARE PALINDROMES!
# ONLY IF A STRING or AN ARRAY IS PALINDROMATIC
=end # FE