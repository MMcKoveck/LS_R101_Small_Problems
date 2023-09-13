#=begin
Write a method that takes one argument, a positive integer, 
and returns a string of alternating 1s and 0s, always starting with 1. 
The length of the string should match the given integer.

Examples:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
=end
#=begin PEDAC
def stringy(num)
  string = ''
  counter = 1
  num.times {
    string << counter

  }
  << 1
  num - 1 times 
  if string[-1] == 1 << 0
    if string[-1] == 0 << 1
      No counter
      Ternary?
=end
#=begin MY CODE
def stringy(num)
  string = '1'
  num-1.times {string[-1] != '1' ? string << 1 : string << '0'}
  p string
end
# THIS WORKS WITH 0 TOO 
def stringy(num)
  string = ''
  loop do
    break if num == 0
    string[-1] != '1' ? string << '1' : string << '0'
    break if string.length == num
  end
  p string
end

#=begin THEIR CODE
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end
Performing a task a certain number of times should be fairly straightforward at this point. 
We use .times to iterate based on the number indicated by size. 
For each iteration, we use the index block parameter in a conditional to determine if 
the current number is even or odd. 
Since .times starts counting from 0, we know that the first number will be even. 
Knowing this, we can write our conditional to return 1 if index is even and 0 if index is odd.

We assign that value to a variable and, on the next line, we add it to an array, numbers. 
After .times has finished iterating, we're' left with an array filled with 1s and 0s 
in the correct order. Now, all we have to do is invoke numbers.join to return the desired output.
=end
#=begin FE
Modify stringy so it takes an additional optional argument that defaults to 1. 
If the method is called with this argument set to 0, 
the method should return a String of alternating 0s and 1s, but starting with 0 instead of 1.

# MINE TO AMEND WORKS
def stringy(num, start = 1)
  string = '1'
  string = '0' if start == 0
  string = '0' if num == 0
  start = 1 if start != 0
  loop do
    break if num == 0 || num == 1
    string[-1] != '1' ? string << '1' : string << '0'
    break if string.length == num
  end
  p string
end

# THEIRS TO AMEND WORKS
def stringy(size, start = 1)
  numbers = []
  start = 1 if start != 0
  size.times do |index|
    if start == 1
      number = index.even? ? 1 : 0
      numbers << number
    elsif start == 0
      number = index.even? ? 0 : 1
      numbers << number
    end
  end
  numbers = ['0'] if size == 0
  numbers.join
end