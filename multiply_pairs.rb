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
  array3 = array1.product(array2).map{|x, y| x * y}.sort
end
# DON'T' NEED THE array3
def multiply_all_pairs(array1, array2)
  array1.product(array2).map{|x, y| x * y}.sort
end

=end
#=begin THEIR CODE
def multiply_all_pairs(array_1, array_2)
  products = []
  array_1.each do |item_1|
    array_2.each do |item_2|
      products << item_1 * item_2
    end
  end
  products.sort
end

For the above solution we have two iterators, one for the first array and one for the second. 
We want all the different combinations of multiples, duplicates included.
To do this, we need to iterate through each item in the first array, 
  and then multiply it by each item in the second array. 
  Finally, we sort our array of products and return that array.

Just for fun, here is a more compact solution.

def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end
# PRETTY MUCH EXACTLY WHAT I HAD BUT WITH .product instead of anything else
=end
#=begin FE
What do you think? Did you go about solving this exercise differently? 
  What method did you end up using?
# MORE OR LESS THE SAME AS 2 
#=begin ERIC QIAN'S' CODE
# THIS ONE USES .inject(:*) to multiply the elements
def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map { |subarr| subarr.inject(:*) }.sort
end

=end