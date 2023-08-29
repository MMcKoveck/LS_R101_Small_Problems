#=begin
Write a method that takes a string as an argument and returns a new string 
in which every uppercase letter is replaced by its lowercase version, 
and every lowercase letter by its uppercase version. 
All other characters should be unchanged.

You may not use String.swapcase; write your own version of this method.

Example:
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

=end
#=begin PEDAC
def swapcase(string)
  make new_string
  loop 
  shift string[0] 
  if char [A-Z], downcase then push to new_string
  elsif char [a-z], upcase then push to new_string
  else  push to new_string
  break if string == ''
end

=end
#=begin MY CODE
#first try
def swapcase(string)
  new_string = ''
  loop do 
    string[0].downcase! if string[0] =~ /A-Z/
    string[0].upcase! if string[0] =~ /a-z/
    new_string << string.slice!(0)
    break if string == ''
  end
  new_string
end
#TRY AGAIN
def swapcase(string)
  new_string = ''
  loop do 
    if string[0] =~ /[A-Z]/ do
      new_string << string[0].downcase! 
      string.slice!(0)
    end
    elsif string[0] =~ /[a-z]/ do
      new_string << string[0].upcase! 
      string.slice!(0)
    end
    else new_string << string.slice!(0)
    break if string == ''
  end
  new_string
end
#TRY AGAIN 3 WORKS!
def swapcase(string)
  new_string = ''
  loop do 
    break if string == ''
    if string.start_with?(/[A-Z]/) 
      new_string << string[0].downcase! 
      string.slice!(0)
    elsif string.start_with?(/[a-z]/)
      new_string << string[0].upcase! 
      string.slice!(0)
    else new_string << string.slice!(0)
    end
  end
  new_string
end

# TRY TERNARY
# (string.start_with?(/[A-Z]/)) ? (new_string << string[0].downcase!) : ((string.start_with?(/[a-z]/)) ? (new_string << string[0].upcase!) : (new_string << string.slice!(0)))
#=begin THEIR CODE
def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

In our solution, we iterate through each character in the string passed into swapcase. 
If the character is lowercase (/[a-z]/), we make it uppercase; 
if it is uppercase (/[A-Z]/), we make it lowercase. 
For all other characters, we do nothing.

Each character is then mapped to a new array and assigned to characters. 
Finally, we join characters together into a new String and return that value.
=end # THEIR CODE

