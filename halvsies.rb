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
# THIS DOESN'T' HANDLE UNEVEN ARRAYS WITHOUT .compact
def halvsies(array)
  array1 = []
  array2 = []
  until array == []
    array1 << array.shift
    array2.unshift(array.pop)
  end
  array3 = [array1, array2.compact]
  p array3
end
irb(main):461:0> halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
[[1, 5, 2], [nil, 4, 3]]
=> false
=end
#=begin THEIR CODE
def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end

Our task is to split an array into two pieces, a first and second half. 
We first get the middle, which is more exactly the size of the first half, 
by dividing the original array's' size by two. If the original array is odd in size, 
then the call to ceil will account for that, making the first half larger than the second by one.

To create both halves, the Array.slice method is used. 
Here slice takes two arguments: 
the first one is the starting index and 
the second one is the length of the slice. 
For the second half, we can use our middle value as the starting index and specify a length 
that includes any remaining elements left in the original array after we removed the first half.

Finally, our halvsies array is created by specifying our two halves as the sole elements of a new array.

.ceil == ceiling
.floor == floor
=end
#=begin FE
Can you explain why our solution divides array.size by 2.0 instead of just 2?

irb(main):475:0> 2.1 / 0.7
=> 3.0000000000000004
irb(main):476:0> (2.1 /0.7).ceil
=> 4
irb(main):477:0> (2.1 / 0.7).floor
=> 3
irb(main):478:0> (7 / 2)
=> 3                          # NO REMAINDER / AUTO ROUNDING
irb(main):479:0> (7 / 2).floor
=> 3
irb(main):480:0> (7 / 2).ceil
=> 3
irb(main):481:0> (7 / 2.0) 
=> 3.5                        # 2.0 ALLOWS FOR DECIMAL AMOUNT TO MANUALLY ROUND     
irb(main):482:0> (7 / 2.0).floor
=> 3
irb(main):483:0> (7 / 2.0).ceil
=> 4

This is but one way to solve this problem. 
What solution did you end up with? Was it similar or entirely different?

#=begin SHAWN GRYCKI'S' CODE
This stood out to me as a good problem to test the Enumerable.partition method introduced 
in the RB110 course under More Methods in lesson 1. 
The first array is based on the truthiness of the block, 
while the falsy values are put into the second array. 
  The method itself returns a new, nested array.

def halvsies(array)
  length = (array.length / 2.0).ceil
  idx = 0
  array.partition do
    idx += 1
    idx <= length
  end
end

shortened to one line

def halvsies(array)
  array.partition.with_index { |_,idx| idx < (array.length / 2.0).ceil }
end

His Further Exploration

2.0 is used instead of 2 because we want to return a floating point number 
to round with the following method .ceil
=end