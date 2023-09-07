#=begin
Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

Examples:
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
=end
#=begin PEDAC
def reverse_sentence(string)
  split string into array
  reverse array
  join(' ')
end
=end
#=begin MY CODE WORKS BUT TOO MANY STEPS!
def reverse_sentence(string)
  array = string.split
  array.reverse!
  array.join(' ')
end

def reverse_sentence(string) #p to test, chained methods to shorten code
  string.split.reverse!.join(' ') # doesn't' need ! because not mutating an array
 # p array = string.split#.reverse!.join(' ')
 # p array.reverse!#.join(' ')
 #p array.join(' ')
end

def reverse_sentence(string)
  string.split.reverse.join(' ')
end