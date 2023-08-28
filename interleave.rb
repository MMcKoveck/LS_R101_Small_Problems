#=begin
Write a method that combines two Arrays passed in as arguments, 
and returns a new Array that contains all elements from both Array arguments, 
with the elements taken in alternation.

You may assume that both input Arrays are non-empty, 
and that they have the same number of elements.

Example:
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

=end
#=begin PEDAC
def interleave(array1, array2)
  create array3
  loop 
    shift array1 to array3
    shift array2 to array3
    break if array1 is empty
  end
  array3

  OR 

  (array1.size).times 
    shift array1 to array3
    shift array2 to array3
  end
    array3
end
=end #PEDAC
#=begin MY CODE WORKS
def interleave(array1, array2)
  array3 = []
  (array1.size).times do
    array3 << array1.shift
    array3 << array2.shift
  end
  array3
end

=end # MY CODE
#=begin THEIR CODE
def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end
In our solution, we use .each_with_index to get values and index numbers for array1, 
then use the index number to access the corresponding element in array2.

TAKE SOME TIME TO LEARN THIS BECAUSE IT'S' NOT CLICKING YET

#=begin FE
Take a few minutes to read about Array.zip. .zip doesn't' do the same thing as interleave, 
  but it is very close, and more flexible. 
  In fact, interleave can be implemented in terms of zip and one other method from the Array class. 
  See if you can rewrite interleave to use zip.
# THIS WORKS
def interleave(array1, array2)
  array3 = [] # MUST INITIALIZE ARRAY
  array3 << array1.zip(array2)
  array3.flatten # MUST FLATTEN OR IT'S' => [[[1, "a"], [2, "b"], [3, "c"]]]
end
