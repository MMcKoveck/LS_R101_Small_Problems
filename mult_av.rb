#=begin
Write a method that takes an Array of integers as input, 
multiplies all the numbers together, 
divides the result by the number of entries in the Array, 
and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

Examples:
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
=end
#=begin PEDAC
# TURNED IN TO MY CODE
def show_multiplicative_average(array) 
  p '%.3f' % result = array.inject(:*).to_f / array.size
end
# I FORGOT TO INTERPOLATE THE text
def show_multiplicative_average(array) 
  result = array.inject(:*).to_f / array.size
  puts "The result is #{format('%.3f', result)}"
end
=end
#=begin THEIR CODE
def show_multiplicative_average(numbers)
  product = 1.to_f
  numbers.each { |number| product *= number }
  average = product / numbers.size
  puts "The result is #{format('%.3f', average)}"
end

We could use Enumerable.reduce to compute the product, but for simplicity, 
we use .each instead. Once we have the desired product, 
we calculate the multiplicative average and format it with three decimal places.
=end
#=begin FE
What happens if you omit the call to .to_f on the first line of our method?
# IT ROUNDS AUTOMATICALLY, NO END