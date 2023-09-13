#=begin
Write a method that returns true if its integer argument is palindromic, false otherwise. 
A palindromic number reads the same forwards and backwards.

Examples:

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true
=end
def palindromic_number?(num)
  num == num.to_s.reverse.to_i
end

#=begin THEIR CODE
def palindromic_number?(number)
  palindrome?(number.to_s)
end

def palindromic_number?(num)
  num = num.to_s
  p num
  loop do
    if num[0] == '0' && num[-1] == '0'  
      num.delete!(num[0], num[-1]) # MULTIPLE ARGUMENTS SEPARATED BY COMMA
      #num.delete!(num[-1])
    end
    break if num[0] != '0' || num[-1] != '0'
  end
  p num
  num == num.reverse
end