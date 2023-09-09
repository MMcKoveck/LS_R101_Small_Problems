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
  switch.flatten
end
# EACH THING PUSHED WITH << IS SEPARATE IN THE MAIN ARRAY
# SO WITHOUT FLATTEN IT GOES FROM
[1, 2, 3, 4, 5]    to 
[5, [2, 3, 4], 1] 
# BUT IT NEEDS TO BE 
[5, 2, 3, 4, 1]
# TRY AGAIN!! OK THIS WORKS
def rotate_array(array)
  switch = []
  switch << array[1..-1] << array[0]
  switch.flatten
end
# TOO MANY STEPS REALLY. 
=end # MY CODE
#=begin THEIR CODE 
# THIS IS NICE, JUST CALL AND CONCAT THE ELEMENTS!!
def rotate_array(array)
  array[1..-1] + [array[0]]
end
There are multiple ways to solve this, but we show just one.

Our solution simply slices everything out of the array except the first element, 
then appends the original first element to the end. Note that we must be careful to not mutate array.
=end
#=begin FE
Write a method that rotates a string instead of an array. Do the same thing for integers. 
You may use rotate_array from inside your new method.

#=begin ERIC QIAN''S CODE
def rotate_array(arr)
  ret_arr = Array.new(arr)
  ret_arr.shift
  ret_arr.push(arr[0])
end

#Further Exploration
def rotate_string(str)
  str[1..-1] + str[0]
end

def rotate_integer(int)
  rotate_string(int.to_s).to_i
end
=end


