#=begin
Write a method that takes a non-empty string argument, 
and returns the middle character or characters of the argument. 
If the argument has an odd length, you should return exactly one character. 
If the argument has an even length, you should return exactly two characters.

Examples:
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'
=end
#=begin PEDAC
def center_of(string)
  if string length odd? string[center]           y[y.length/2]
    if string length even? string[center, 2]     y[(y.length/2-1),2]
=end
#=begin MY CODE works
def center_of(string)
  string.length.odd? ? string[string.length/2] : string[(string.length/2-1),2]
end
