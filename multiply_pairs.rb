#=begin
Write a method that takes two Array arguments in which each Array contains a list of numbers, 
and returns a new Array that contains the product of every pair of numbers 
that can be formed between the elements of the two Arrays. 
The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

Examples:
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
=end
#=begin PEDAC
def multiply_all_pairs(array1, array2)
  multiply each element from array1 with each element from array 2
  store every output in new array then sort that array (increasing)

loop array1 each index * array2 each index 


=end
#=begin MY CODE
def multiply_all_pairs(array1, array2)
  array3 = []
  #p array3 = array1.each_with_object(array2.each) {|x| x * array2}
  p array3 = array1.zip(array2).map{|x, y| x * y}
end
# WORKS! Was looking for .product
def multiply_all_pairs(array1, array2)
  array3 = []
  p array3 = array1.product(array2).map{|x, y| x * y}.sort
end





=end
