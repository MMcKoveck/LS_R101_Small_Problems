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

