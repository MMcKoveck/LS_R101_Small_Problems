=begin
Given an unordered array and the information that exactly one value in the array occurs twice 
(every other value occurs exactly once), how would you determine which value occurs twice? 
Write a method that will find and return the duplicate value that is known to be in the array.

Examples:
find_dup([1, 5, 3, 1]) == 1
find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
=end
=begin PEDAC
sort array
check <=> elements
return a match

OR

compare array to array.uniq using <=>

=end
#=begin MY CODE
def find_dup(array)
  array <=> array.uniq
end
# <=> only returns -1,0,1
#array index if array index <=> array index + 1 == 0
# ADD THE COMPARISONS TOGETHER WITH .sum !!!
# I ABOUT HAD THIS IN IRB, BUT THIS WAS MITCH MILLS' CODE!
def find_dup(array)
  array.sum - array.uniq.sum
end

#p find_dup([1, 5, 3, 1])
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58])

# WORKS WITH TESTS
def find_dup(array)
  array.sort!
  p array #TEST LINE
  loop do
    array.shift if array[0] != array[1]
    p array #TEST LINE
    break if array[0] == array[1]
  end
  p array[0] #TEST P RETURN VALUE
end
# WORKS IN IRB
irb(main):078:0> find_dup([1, 5, 3, 2, 3]) == 3
[1, 2, 3, 3, 5]
[2, 3, 3, 5]
[3, 3, 5]
3
=> true

# THIS WORKS
def find_dup(array)
  array.sort!
  loop do
    array.shift if array[0] != array[1]
    break if array[0] == array[1]
  end
  array[0]
end

=end # MY CODE
#=begin THEIR CODE
def find_dup(array)
  array.find { |element| array.count(element) == 2 }
end

Here we're' using the method Enumerable.find to look through each item in our array. 
If that item meets some condition we return it. 
In this case, the condition we check is that that item occurs twice. 
This bit of code will allow us to find the duplicate element regardless of the size of the array.
=end # THEIR CODE
#=begin FE
There are several ways to go about solving this problem. 
One other way would be to have a separate array that keeps track of which items 
have been looked at as we iterate through the original array. 
If we ever add the same item twice to this second array, then we know that we have found a duplicate.

How did you end up solving this one?
=end

#=begin OTHER CODE
# ADD THE COMPARISONS TOGETHER WITH .sum !!!
# I ABOUT HAD THIS IN IRB, BUT THIS WAS MITCH MILLS' CODE!
def find_dup(array)
  array.sum - array.uniq.sum
end

# DYLAN SPYER'S' CODE
Extract the array to a hash where key is the number and value is the frequency of the number
Select items in the hash where the value is equal to 2
Get just the key from that item (returns array)
Get the element at index 0 (the only element)

def find_dup(arr)
  arr.tally.select { |k,v| v == 2 }.keys[0]
end

# MITCH MILLS FTW EACH WITH INDEX EACH WITH OBJECT
My first solutions involved sorting the array:
# FIRST MORE ELEGANT VERSION OF MINE
def find_dup(array)
  array.sort.each_cons(2) do |pair|
    return pair[0] if pair[0] == pair[1]
  end
end
# SECOND
def find_dup(array)
  array.sort!.each_with_index do |num, idx|
    return num if num == array[idx + 1]
  end
end
Then I solved it using an array to track what had already been looked at:
def find_dup(array)
  array.each_with_object([]) do |num, seen|
    return num if seen.include?(num)
    seen << num
  end
end

=end