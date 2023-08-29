#=begin
Write a method that takes a String as an argument, 
and returns a new String that contains the original value using a staggered capitalization scheme 
in which every other character is capitalized, and the remaining characters are lowercase. 
Characters that are not letters should not be changed, 
but count as characters when switching between upper and lowercase.

Example:
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
=end
#=begin PEDAC
def staggered_case(string)
  string.downcase!
  string each char index |x| x % 2 == 0 .upcase!
make each character upcase if index |x, index| x.upcase! if index % 2 == 0 

=end # PEDAC
#=begin MY CODE WORKS

def staggered_case(string)
  array = string.downcase.split('')
  array.each_with_index {|x, index| x.upcase! if index % 2 == 0}
  array.join
end

=end # MY CODE
