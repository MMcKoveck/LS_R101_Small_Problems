#=begin
Write a method that takes an Array as an argument, and reverses its elements in place; 
that is, mutate the Array passed into this method. The return value should be the same Array object.

You may not use Array.reverse or Array.reverse!.

Examples:

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

Note: for the test case list = ['abc'], we want to reverse the elements in the array. 
  The array only has one element, a String, but we're' not reversing the String itself, 
  so the reverse! method call should return ['abc'].

#=begin PEDAC

def reverse!(list)
  loop pop the array to a new Array?
  assign the new array to the original
  (same object id?)

#=begin MY CODE
def reverse!(list)
 reversed = []
 loop do 
   break if list == []
   reversed << list.pop
 end
 list << reversed
 list.flatten!
end
=begin
# LIST IS NOT BEING REASSIGNED,
# MAYBE I CAN PREPEND THE POP or unshift or something array.size number of times

def reverse!(list)
  list.size.times do 
    list.pop.prepend
  end
  # THIS IS DUMB, IT JUST MAKES THE SAME ARRAY AGAIN 
=end



#=end