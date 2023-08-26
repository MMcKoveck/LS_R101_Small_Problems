#=begin
Write a method that takes an Array as an argument, 
and returns two Arrays (as a pair of nested Arrays) 
that contain the first half and second half of the original Array, respectively. 
If the original array contains an odd number of elements, 
the middle element should be placed in the first half Array.

Examples:
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

#=begin PEDAC
def halvsies(array)
  make 2 empty arrays
  find array size
  maybe cases?
  if array empty just exit with 2 blanks
  if array only 1, exit with first one filled
  if array 2 or more  
  divide array size by 2 assign it to num
  if array.size % 2 != 0 ? num = num + 1 : num = num
    push! array[0] (num +1 if applicable).times 
    push! array[0] to second array with remaining num of elements

OR MAYBE 
  make 2 arrays
  loop 
    push 1st element to array 1 arr.shift
    prepend (unshift) last element to array 2
    break when array is empty
irb(main):406:0> fnord
=> [3, 5]
irb(main):407:0> new_array
=> [1]
irb(main):408:0> fnord.unshift(new_array[0])
=> [1, 3, 5]
irb(main):409:0> fnord
=> [1, 3, 5]
=end
#=begin MY CODE WORKS!

def halvsies(array)
  array1 = []
  array2 = []
  loop do 
    break if array == []
    array1 << array.shift
    break if array == []
    array2.unshift(array.pop)
  end
  array3 = [array1, array2]
end

#=end MY CODE
# THIS DOESN'T' HANDLE UNEVEN ARRAYS
def halvsies(array)
  array1 = []
  array2 = []
  until array == []
    array1 << array.shift
    array2.unshift(array.pop)
  end
  array3 = [array1, array2]
  p array3
end
irb(main):461:0> halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
[[1, 5, 2], [nil, 4, 3]]
=> false