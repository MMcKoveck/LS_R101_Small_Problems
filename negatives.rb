=begin
  Write a method that takes a number as an argument. 
  If the argument is a positive number, return the negative of that number. 
  If the number is 0 or negative, return the original number.
Examples:
negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby
=end
=begin PEDAC
def negative(number)
  if number > 0 
    puts number * -1
  else puts number
  end
end
#just thinking the steps was coding.
p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0 
#This is printing correct numbers but returning falses!
=end #PEDAC
def negative(number)
  if number > 0 
    number * -1
  else number
  end
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0 
# Now it's not printing, but returning trues. 
# This is more in line with the actual question.