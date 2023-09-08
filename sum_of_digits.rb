#=begin
Write a method that takes one argument, a positive integer, and returns the sum of its digits.

Examples:
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

The tests above should print true.

For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).
=end
#=begin PEDAC
def sum(int)
  int to string
  split string into array of integers
  return sum of array
end
=end
#=begin MY CODE WORKS
def sum(int)
  array = int.to_s.split('')
  array.map {|x| x.to_i}.sum
end
#=begin CODY MCKEEFRY'S' CODE
def sum(num)
  num.digits.inject(:+)
end
# DO IT THIS WAY
#=begin THEIR CODE
Solution 1:
def sum(number)
  sum = 0
  str_digits = number.to_s.chars

  str_digits.each do |str_digit|
    sum += str_digit.to_i
  end

  sum
end

Solution 2: # REMEMBER HOW TO DO IT THIS WAY TOO!!
def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

This exercise proves to be tricky in a couple of ways. 
First, if you tried to split the number while it was an integer you probably got an error. 
The key here is to convert it to a string, then split it, like this:

23.to_s.chars # => ["2", "3"]

To remember that we are dealing with strings, we assign this array to a variable named str_digits. 
We then iterate over our array and, on each iteration, 
increment the sum by the given digit converted back to an integer.

What would happen if we forgot to convert the string digits back to integers? 
We would get a TypeError telling us that we can't' coerce a string into an integer. 
We would be trying to add a string like '2' to our initial value of 0, which is not allowed.

Let's' look at the second solution. 
You may think of using .reduce to sum the numbers in the array, like this:

def sum(number)
  number.to_s.chars.reduce(:+)
end

If you tried this, however, you probably got unexpected results. 
.reduce worked, but instead of adding integers, it was adding strings, which isn't' what you want. 
Again, the array of strings needs to be converted to an array of integers. 
We can do this using .map and Ruby's' shorthand syntax:

["2", "3"].map(&:to_i) # => [2, 3]

If that looks confusing, just remember that it's' the same as this:

["2", "3"].map { |element| element.to_i } # => [2, 3]

It's' possible to invoke all of these methods in one statement due to the return values of each method.
All four of the methods used in the solution return the object we need to continue chaining methods. 
The following code shows the return value of each method:

23.to_s        # => "23"
  .chars       # => ["2", "3"]
  .map(&:to_i) # => [2, 3]
  .reduce(:+)  # => 5

This makes for very compact code, but maybe less readable than the first solution. What do you think?
=end