#=begin
Write a method that returns a list of all substrings of a string that 
start at the beginning of the original string. 
The return value should be arranged in order from shortest to longest substring.

Examples:
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
=end
#=begin PEDAC
same as sum_of_sums but string not array
no sum
save groups not individual chars
output array of substrings

#START FROM THIS OLDER CODE OF MINE
def sum_of_sums(array)
  total = []
  idx = 0
  array2 = []
  array.size.times do
    array2 << array[idx]
    idx += 1
    array2.each_entry {|x| total << x}
  end
  total.sum
end
=end # PEDAC
#=begin MY CODE WORKS
def leading_substrings(string)
  result = []
  idx = 0
  array = []
  string.length.times do
    array << string[idx]
    idx += 1
    result << array.join
  end
  result
end
=end
#=begin THEIR CODE
def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index| # WHY IS IT .size - 1 ? OH, BECAUSE IT'S .upto STARTING AT 0. I CHOSE string.length.times
    result << string[0..index] # THIS IS A RANGE FROM INDEX[0] UPTO & INCLUDING index 
  end                          # index increases with each iteration so no need for a counter
  result                       # I LIKE THIS! REMEMBER TO USE IT!
end

This problem is straightforward; all we need to do is to iterate through the characters of a string, 
  returning each substring that starts at the beginning of the string, 
  and ends with the character we are currently iterating.

The hardest part of this problem is determining the correct looping structure to use; 
we decided to use upto, but any looping structure that works would be fine.

The expression string[0..index] may need a bit of explanation; 
it simply returns a substring of string. 
The substring starts at position 0, and ends at position index.
# THE FIRST TIME IT'S' 0..0, THEN 0..1, THEN 0..2 ETC. I LIKE IT!

#=begin RASHID NAIK'S' CODE
Used the slice method instead of doing an indexed looking, which is pretty much the same thing:
def leading_substrings(string)
  arr = []
  1.upto(string.size) do |count| # DIFFERENT APPROACH TO upto(string.size)
    arr << string.slice(0, count) #(from index, slice length)
  end
  arr
end

=begin MITCH MILLS!!!
Mitch Mills
4 months ago
I learned a lot working through this problem and then looking at the LS explanation and others' solutions. I've boiled down some of what I noticed into notes and am posting it here in case it's useful to anyone else.

The basic solution pattern is:
- Iterate over the characters in the input string
- On each iteration, take a slice of the string
- Return all of the slices in a sorted array

We need to control:
- How many iterations to do
- The characters that end up in each slice
- How the slices end up in an array for output

Controlling Number of Iterations
Possibilities:
- conditional statements to break out of a loop
- built-in methods that automatically handle the number of iterations, for example #each_char, #map, etc
- methods that explicitly count the number of iterations, for example #upto or #times

Controlling the Characters That End Up in Each Slice
Possibilities:
- indexing (i.e. start index and stop index of slice)
- size (i.e. start index and number of characters in slice)

Getting the Slices into an Output Array
Possibilities:
- Initialize an array within the method and then explicitly return it at the end
- Use a method like #each_with_object to create an array that is implicitly returned
- Use a method like #map that implicitly returns an array

My Approach
For this problem, I noticed:
number of characters in the input string == number of iterations needed == number of characters in the final slice == number of elements in the output array

Controlling Iterations
To control the number of iterations, I initially went with converting the input string into an array and then iterating over each element of the array.

I later realized that within the block I didn't need to refer to any input string characters directly, just their indexes, and tried some other options:
- iterating over a range object
- iterating using #times
- iterating over a series of numbers created by using #upto

Controlling Characters in Slice
using indexing: string[0..idx] or array[0..idx]
To use indexing, we need a series of numbers starting at 0 and ending at the index of the final character in the input string. So for input 'abcd' we'd need the numbers 0 through 3.

Methods like #each_with_index and #each_index are obvious choices to provide these numbers. #times starts counting at 0, and range objects and #upto can also be started at 0, so they can be good choices here.

using size: string[0, length] or array[0, length] or array.take(length)
To use size, we need a series of numbers starting at 1 and ending at the size of the input string. So for input 'abcd' we'd need the numbers 1 through 4. Range objects or #upto starting at 1 work well to provide these numbers.

Output Array
Because the number of characters in the input string equals the number of elements in the output array, #map seemed like a perfect choice: it implicitly returns an array, so initializing a separate array or using a method like #each_with_object isn't necessary.

Other Observations
I noticed that I didn't need to directly refer to each input string character within the block, so I used #each_index instead of #each_with_index in my first example and avoided having an unused variable.

By carefully choosing what numbers I used, I was able to avoid having to use expressions like string.size - 1. For example I used a three-dot range (0...string.size) so that I didn't have to subtract one from string.size to get the index of the last character in the input string.

In most cases, it was possible and pretty easy to work directly on the string object, instead of converting it into an array of characters and later joining those back together.
=end
