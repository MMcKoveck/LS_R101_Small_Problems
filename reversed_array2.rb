#=begin
Write a method that takes an Array, and returns a new Array 
with the elements of the original list in reverse order. 
Do not modify the original list.

You may not use Array.reverse or Array.reverse!, 
nor may you use the method you wrote in the previous exercise.

Examples:
reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true

=end
#=begin PEDAC
def reverse(array)
  clone array to array2
  array.size.times do 
    rev_array << array2.pop
  end
  rev_array.flatten!

  =end # PEDAC
#=begin MY CODE WORKS

def reverse(array)
  array2 = []
  array2 << array
  array2.flatten!
  rev_array = []
  array.size.times do 
    rev_array << array2.pop
  end
  rev_array
end
=end # MY CODE
