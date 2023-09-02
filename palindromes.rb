#=begin
Write a method that returns a list of all substrings of a string that are palindromic. 
That is, each substring must consist of the same sequence of characters forwards as it does backwards. 
The return value should be arranged in the same sequence as the substrings appear in the string. 
Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention to case; 
  that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. 
  In addition, assume that single characters are not palindromes.

Examples:
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
=end
#=begin PEDAC
def palindromes(string)
return array of all palindromes
split string into array of strings by spaces
loop
check if 2 characters are the same
then check if outside characters are the same
break if 2 characters are different

It looks like they want it to work from the outside-in.
palindromes('madam') == ['madam', 'ada']
would palindromes('madama') == ['madam', 'ada'] be the same?
or palindromes('amadam') == ['madam', 'ada']?
what about odd vs even length search strings?

maybe don't' split the string and just search from left to right.
This would probably be perfect for regex.
search for a character (even -) 
then search from end to find something that matches
star number of chars in between
(temporarily remember the length of that string slice)
search index +1 from first and -1 from last and check if they match
if yes, do it again, if no, exit that part of loop
if the size of the selected chars == the original distance, concat that to output array
move to the next char and do it all again
stop everything when end of string is reached
(string.length.times?)
return output array

