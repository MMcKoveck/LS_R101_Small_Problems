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
  array.select.each_with_index {|_, index| index.even?}
end