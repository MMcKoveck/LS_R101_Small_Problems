#=begin
Using the multiply method from the "Multiplying Two Numbers" problem, 
write a method that computes the square of its argument 
(the square is the result of multiplying a number by itself).

Example:
square(5) == 25
square(-8) == 64
=end
#=begin 
def multiply(num1, num2)
  num1 * num2
end


def square(num)
  multiply(num, num)
end

def number_power(num, power)
  multiply(num,  1) ** power
end