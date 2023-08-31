#=begin
Write a method that takes an Array of numbers and then returns 
the sum of the sums of each leading subsequence for that Array. 
You may assume that the Array always contains at least one number.

Examples:
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35
=end
#=begin PEDAC
def sum_of_sums(array)
  zip? each with index?
  iteration counter? 
  0,0+1,0+1+2,0+1+2+3
  array.times add elements until array.size
  .sum

  OR
  total = index[0] * array.size -0, index[1] * array.size -1, ..
  increment index up and array.size down until array.size == 0 
  .sum
  gets answer but not the right way

  OR
  loop
  whole array
  pop
  until array.length == 0

=end    
#=begin MY CODE WORKS! but is it iterating through the right way? Does that matter?
def sum_of_sums(array)
  total = []
  until array.size == 0
    array.each_entry {|x| total << x}
    array.pop
  end
  total.sum
end
# THIS ONE DOES IT THE RIGHT WAY!!!
#=========================array = [1, 2, 3]
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
#=begin THEIR CODE
Solution 1:
def sum_of_sums(numbers)
  sum_total = 0
  accumulator = 0

  numbers.each do |num|
    accumulator += num
    sum_total += accumulator
  end

  sum_total
end

Solution 2:
def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end

