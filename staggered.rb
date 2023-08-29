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
#=begin THEIR CODE
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

This solution simply iterates through the String while building another String one character at a time,
either uppercasing or lowercasing each character as needed. 
Note that we never need to actually test whether a character is upper- or lowercase, 
or even whether it is alphabetic: the upcase and downcase methods handle this for us.

To keep track of whether we want to upcase or downcase each character, 
we define a boolean variable need_upper that starts out as true. 
Each time we process a character, we upcase it or downcase it based on the current state of need_upper. 
We then toggle need_upper from true to false or false to true using need_upper = !need_upper.
=end
#=begin FE
Can you modify this method so the caller can request that the first character be downcased 
rather than upcased? If the first character is downcased, 
then the second character should be upcased, and so on.

Hint: Use a keyword argument.
(START WITH FALSE?)
def staggered_case(string)
  result = ''
  need_upper = false
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  p result #(p to test)
end
# MINE REVISED
def staggered_case(string)
  array = string.upcase.split('')
  array.each_with_index {|x, index| x.downcase! if index % 2 == 0}
  p array.join #(p to test)
end

# MITCH MILLS' ' CODE
Further Exploration (wherein I learned what the heck a keyword argument is):
# 2nd ARGUMENT IN (), true or flase
def staggered_case(string, start_upper: true)
  string.chars.each_with_object('') do |char, result|
    result << (start_upper ? char.upcase : char.downcase)
    start_upper = !start_upper
  end
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

p staggered_case('I Love Launch School!', start_upper: false) == "i lOvE LaUnCh sChOoL!"
p staggered_case('ALL_CAPS', start_upper: false) == "aLl_cApS"
p staggered_case('ignore 77 the 444 numbers', start_upper: false) == "iGnOrE 77 tHe 444 nUmBeRs"

=end
