=begin 
Using the multiply method from the "Multiplying Two Numbers" problem, 
write a method that computes the square of its argument 
(the square is the result of multiplying a number by itself).
Example: 
square(5) == 25
square(-8) == 64

def multiply(a, b)
  a * b
end

=end
=begin MY CODE
def square(num)
  num * num
end
=end
# THIS IS WRONG BECAUSE IT DOESN'T USE THE multiply METHOD!!
=begin THEIR CODE
def square(n)
  multiply(n, n)
end
Our implementation relies on the previous exercise's multiply method. 
The return value of multiply is the result of multiplying the two arguments 
we pass to it, so we can simply pass in the same number twice, 
which will return the squared value. 
Our square method is implicitly returning the return value from multiply(n, n).
=end

=begin THIS IS THE WAY
def multiply(a, b)
  a * b
end

def square(num)
  multiply(num, num)
end

# NICE NESTED METHODS!
#=end
#=begin FE
What if we wanted to generalize this method to a "power to the n" type method: 
cubed, to the 4th power, to the 5th, etc. 
How would we go about doing so while still using the multiply method?

PEDAC
method takes number, power
must use multiply(a, b)
(can't change it to a ** b)
remember left side of * is hinky so that should be the power?
=end

puts "Choose a base number:"
number = gets.chomp.to_i
puts "Choose a power:"
power = gets.chomp.to_i

def multiply(a, b)
  a * b
end

def exp(base, pow)
  multiply(base, 1) ** pow
end

puts "The number #{number} to the power of #{power} is #{exp(number, power)}."

=begin
c = 0 
def powered(number, power)
  c = 0
  c = multiply(number, number)
  loop do
    if power > 2 
      c = multiply(c, number)
      power -= 1
    end
  end
  return c
end
puts "The number #{number} to the power of #{power} is #{c}."

#=begin
#OLD
  (power - 2).times do |c|
    c = multiply(c, number)       # 3
    #c += multiply(number, c)       # 4
    #c += multiply(number, c)       # 5
  end
=end

=begin SEDONIA STEININGER'S CODE
def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

# Further Exploration

def nth_power(num, power)
  multiply(num, 1) ** power
end

THIS IS THE RIGHT WAY
BUT TRICKY! USES ** WITHOUT CHANGING THE multiply METHOD
BY MULTIPLYING THE BASE NUMBER BY 1 !!! 
=end