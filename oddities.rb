#=begin
Write a method that returns an Array that contains every other element of an Array that is 
passed in as an argument. 
The values in the returned list should be those values that are in the 1st, 3rd, 5th, 
and so on elements of the argument Array.

Examples:
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
oddities([1, 2, 3, 4, 1]) == [1, 3, 1]
=end
#=begin PEDAC
def oddities(array)
  map array if index % 2 != 0
end
=end
#=begin MY CODE
def oddities(array)
  array.select{|index| index.even?}
end
# THIS ONE WORKS!! 
def oddities(array)
  array.select.with_index {|_, index| index.even?}
end

=end # MY CODE
#=begin THEIR CODE
def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end

This problem can be slightly confusing because we want the 1st, 3rd, 5th, and so elements of the array,
but these correspond to elements with indexes 0, 2, 4, etc. 
As long as you keep that in mind, there are many different ways to solve this problem correctly.

Our solution takes the most basic approach; 
rather than using any of a number of different Array methods, 
we use a simple while loop, 
incrementing our index by 2 with each iteration. 
For each iteration, we add the element value to our result Array, odd_elements.

=end
#=begin FE
Write a companion method that returns the 2nd, 4th, 6th, and so on elements of an array.

def oddities(array)
  array.select.with_index {|_, index| index.odd?}
end

Try to solve this exercise in at least 2 additional ways.

#=begin MITCH MILLS'' CODE
# initial solution
def oddities(array)
  array.each_index.with_object([]) do |idx, result|
    result << array[idx] if idx.even?
  end
end

# some other solutions
def oddities(array)
  array.map.with_index { |ele, idx| ele if idx.even? }.compact
end

def oddities(array)
  (0...array.size).map { |idx| array[idx] if idx.even? }.compact
end

def oddities(array)
  (0...array.size).step(2).map { |idx| array[idx] }
end

def oddities(array) 
  0.step(array.size - 1, 2).map { |idx| array[idx] }
end
=end
#=begin CODY MCKEEFRY'S' CODE
def oddities(arr)
  p arr.select.with_index { |_, i| i.even?}
end

def oddities(arr)
  arr.map.with_index { |x, i| i.even? ? x : nil }.compact
end
=end
