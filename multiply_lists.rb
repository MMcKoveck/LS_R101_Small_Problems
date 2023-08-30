#=begin
Write a method that takes two Array arguments in which each Array contains a list of numbers, 
and returns a new Array that contains the product of each pair of numbers 
from the arguments that have the same index. 
You may assume that the arguments contain the same number of elements.

Examples:
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

=end
#=begin PEDAC
# BECAME MY CODE WORKS
def multiply_list(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element * array2[index]
  end
  result
end





# OLDER CODE REFERENCE
def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end
In our solution, we use .each_with_index to get values and index numbers for array1, 
then use the index number to access the corresponding element in array2.