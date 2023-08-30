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
=end
#=begin
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
=end
#=begin THEIR CODE (EXACTLY THE SAME!!)
def multiply_list(list_1, list_2)
  products = []
  list_1.each_with_index do |item, index|
    products << item * list_2[index]
  end
  products
end

We take a direct approach, and simply iterate an index into both Arrays, 
appending each product to the products Array.
=end
#=begin FE
The Array.zip method can be used to produce an extremely compact solution to this method. 
Read the documentation for zip, 
and see if you can come up with a one line solution (not counting the def and end lines).
# I THOUGHT TO DO THIS FIRST AND COULDN'T FIGURE IT OUT
def multiply_list(array1, array2)
  array1.zip(array2) {|x| x * array2[index]}
end
# IT WORKS, I JUST WINGED IT!