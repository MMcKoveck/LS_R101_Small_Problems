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


