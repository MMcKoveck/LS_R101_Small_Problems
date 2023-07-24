=begin
Write a method that searches for all multiples of 3 or 5 that 
lie between 1 and some other number, and then computes the sum of those multiples. 
For instance, if the supplied number is 20, 
the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

Examples:
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168
=end
=begin PEDAC
def w 1 arg(i)
  establish empty array
  establish empty variable
  make an array with a range from 1..i
if element divisible by 3 or 5 += element to variable 
  return variable

=end # PEDAC
#=begin MY CODE
def multisum(num)
  arr = []
  sum = 0
  (1..num).each {|x| arr << x}
  arr.each {|x| (sum += x) if (x % 3 == 0 || x % 5 == 0) }
  sum
end
#=end # MY CODE
=begin THEIR CODE
def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end

Our solution begins with a multiple? method that returns true if the given number 
is an exact multiple of divisor, false if it's not. 
This method isn't necessary, but it makes the multisum a bit more readable.

multisum does nothing fancy; it rushes headlong into the problem, 
and comes out the other end with the correct result. 
It adds each value that is a multiple of 3 or 5 in the range to the sum variable.
=end # THEIR CODE
#=begin FE
Investigate Enumerable.inject (also known as Enumerable.reduce), 
How might this method be useful in solving this problem? 
(Note that Enumerable methods are available when working with Arrays.) 
Try writing such a solution. Which is clearer? Which is more succinct?

# ORIGINAL CODE TO WORK FROM
def multisum(num) 
  arr = []
  sum = 0
  (1..num).each {|x| arr << x}
  arr.each {|x| (sum += x) if (x % 3 == 0 || x % 5 == 0) }
  sum
end

=begin BRANDON COREY'S CODE
def multisum(num)
  (3..num).reduce(0) do |acc, val|
    acc += val if val % 3 == 0 || val % 5 == 0
    acc
  end
end
=end # BRANDON COREY'S CODE
=begin CLARISSA RODER'S CODE
def multisum(num)
  (1..num).to_a.select { |n| n % 3 == 0 || n % 5 == 0 }.sum
end
=end # CLARISSA RODER'S CODE
=begin CAMERON ADAMS' CODE
def multisum(num)
  (1..num).to_a.select { |i| i % 3 == 0 || i % 5 == 0 }.inject(:+)
end
=end # CAMERON ADAMS' CODE
=begin FADY N.'s CODE
def multisum(number)
  selection = (1..number).select do |num|
    num % 3 == 0 || num % 5 == 0
  end

  total = selection.sum
end
=end # FADY N.'s CODE
=begin SHAWN GRYCKI'S CODE
def multisum(integer)
  values = (1..integer).to_a
  values.select! { |int| int % 3 == 0 || int % 5 == 0 }
  values.inject(:+)
end
=end # SHAWN GRYCKI'S CODE
=begin SEAN POWELL'S CODE
def multisum(int)
  array = []
  (1..int).each do |num|
    array << num if (num % 3 == 0 || num % 5 == 0)
  end
  array.reduce(:+)
end
=end # SEAN POWELL'S CODE