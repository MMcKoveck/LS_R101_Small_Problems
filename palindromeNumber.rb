=begin
Write a method that returns true if its integer argument is palindromic, 
false otherwise. A palindromic number reads the same forwards and backwards.

Examples:
palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true
=end
=begin PEDAC
def method with 1 argument
  convert to string
  compare argument with reverse

=end
#=begin MY CODE
def palindromic_number?(num)
  num_str = num.to_s
  num_str == num_str.reverse
end
#=end MY CODE
=begin THEIR CODE
def palindromic_number?(number)
  palindrome?(number.to_s)
end
The hardest part of this program is recognizing that the easiest way 
to tell if a number is palindromic is to convert it to a string first, 
then check whether that string is palindromic. 
To determine if the string is palindromic, 
we use the palindrome? method we wrote earlier.
(great if you have that method already. I didn't' anymore.)
#=end THEIR CODE
#=begin FE
Suppose your number begins with one or more 0s. 
Will your method still work? Why or why not? Is there any way to address this?
PEDAC
after converting to string
remove all leading 0s
  loop
  check 1st number
  if zero, delete it
    break if not zero 
then check reverse  

#=begin MY FE CODE

# THIS STRIPS LEADING (and now trailing) 0s FROM _STRINGS_
def palindromic_number?(num)
  num_str = num.to_s
  counter = 0
  loop do
    num_str.delete_prefix!('0')
    counter += 1
    break if num_str[0] != '0' 
  end
  counter.times do
    num_str.delete_suffix!('0')
  end
  num_str == num_str.reverse
end
# DOESN'T REALLY FIX THE LEADING ZERO IN DIGITS PROBLEM
#SEDONIA STEININGER'S EXPLANATION SUMS UP WHAT I FOUND
# MAYBE ADD A COUNTER AND APPLY THAT COUNTER TO STRIPPED NUMBER
# TO REMOVE TRAILING 0s
irb(main):115:0> palindromic_number?('0003000')
=> true
irb(main):116:0> palindromic_number?('0055')
=> true
irb(main):117:0> palindromic_number?('00550')
=> true
so it doesn't' really work and it doesn't' really matter 
because the input has to be a string to work
and the problem has the input as an integer
you can't' convert an impossible number to a string
=end