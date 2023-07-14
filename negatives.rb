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

=begin THEIR CODE
def negative(number)
  number > 0 ? -number : number
end

Oooo! I like this Ternary!
apparently you can just modify the object!

Further Exploration

There is an even shorter way to write this but it isn't' as immediately intuitive.

def negative(number)
  -number.abs # returns modified object's absolute value
end

This works by flipping the problem on the head. 
It straightaway converts it to a positive number with Numeric#abs 
and then prepends it with a negative operator to make it negative. 
abs returns the absolute value of a number 
(the non-negative value of a number without regard to its sign).

Thus, instead of operating by checking the value and proceeding based on the evaluation,
 the opposite can be applied by stripping it of its sign, 
 then giving it the negative sign.

This is clearly shorter. However is it superior?
answer: depends on the situation!
=end