=begin
Write a method that takes two strings as arguments, 
determines the longest of the two strings, 
and then returns the result of concatenating 
the shorter string, the longer string, and the shorter string once again. 
You may assume that the strings are of different lengths.

Examples:
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"
short_long_short('22', '333') == "2233322"
short_long_short('333', '22') == "2233322"

=end
=begin PEDAC
method w 2 arguments
compare arg lengths
assign long and short
concat s l s
=end # PEDAC

def short_long_short(str1, str2)
  if str1.size > str2.size
    long = str1
    short = str2
  else 
    long = str2
    short = str1
  end #TERN THIS MOTHA OUT
  short + long + short
end