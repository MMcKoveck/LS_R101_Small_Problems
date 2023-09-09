#=begin 
Write a method that rotates an array by moving the first element to the end of the array. 
The original array should not be modified.

Do not use the method Array.rotate or Array.rotate! for your implementation.

Example:
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true
=end
#=begin PEDAC
def rotate_array(array)
  x[0], x[-1] = x[-1], x[0]
  but that mutates the array
  maybe make a new array and add -1, 1..-2, 0 from original array
  or make a new array and put the old array in it and then do the first thing?
end
=end # PEDAC
#=begin MY CODE OK THIS WORKED FIRST TIME
# ACTUALLY I WAS SWITCHING FIRST AND LAST, NOT PUTTING FIRST TO LAST!!
def rotate_array(array)
  switch = []
  switch << array[-1] << array[1..-2] << array[0]
  switch
end

# TRY AGAIN!! OK THIS WORKS
def rotate_array(array)
  switch = []
  switch << array[1..-1] << array[0]
  switch.flatten
end

