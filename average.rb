#=begin
Write a method that takes one argument, an array containing integers, 
and returns the average of all numbers in the array. 
The array will never be empty and the numbers will always be positive integers. 
Your result should also be an integer.

Don't' use the Array.sum method for your solution - 
see if you can solve this problem using iteration more directly.

Examples:
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
=end
#=begin PEDAC
def average(array)
inject :+
divide result by array.size
end
=end
#=begin MY CODE
def average(array)
  array.inject(:+) / array.size
end
=end
#=begin THEIR CODE
def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end
Two things need to be done to find the average. 
First, add every number together. Second, divide the sum by the number of elements.
We accomplish the first part by using Enumerable.reduce(also known as .inject), 
which combines all elements of the given array by applying a binary operation. 
This operation is specified by a block or symbol. We used a block in our solution, 
but we could have just as easily used a symbol, like this:

numbers.reduce(:+)

Once we have the sum, all that's' left is to divide it by the number of elements. 
To do that, we use .count to count the number of elements in numbers. 
Then, we divide sum by the number of elements and return the quotient.
=end
#=begin FE
Currently, the return value of average is an Integer. 
When dividing numbers, sometimes the quotient isn't' a whole number, therefore, 
it might make more sense to return a Float. 
Can you change the return value of average from an Integer to a Float?

def average(array)
  array.inject(:+) / array.size.to_f
end
=end