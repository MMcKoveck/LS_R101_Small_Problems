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
  arr.each {|x| (sum = x + sum) if (x % 3 == 0 || x % 5 == 0) }
  sum
end
#=end # MY CODE