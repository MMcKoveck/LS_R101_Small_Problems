=begin
Write a method that takes an Array of numbers, 
and returns an Array with the same number of elements, 
and each element has the running total from the original Array.

Examples:
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

A running total is the sum of all values in a list up to and including the current element. 
Thus, the running total when looking at index 2 of the array [14, 11, 7, 15, 20] 
is 32 (14 + 11 + 7), while the running total at index 3 is 47 (14 + 11 + 7 + 15).
=end
=begin PEDAC

def rt(array)
  make new empty array
  takes each element of original array and adds the last element of the new array
  adds that to end of new array
when no new elements in original array
  return new array
#  takes next element of o array and adds the last element of the new array
#  adds that to new array
=end # PEDAC
#=begin MY CODE
=begin DEBUG
def running_total(arr1)
  p arr1
  arr2 = []
  arr2 << arr1.each {|x| x + arr2[-1]}
  arr2
end

def running_total(arr1)
  ##p arr1
  ##p arr1[0]
  arr2 = []
  arr2 << arr1[0]
  ##p arr2[0]
  ##p arr2[-1]
  arr2 << arr1.each {|x| x + arr2[-1]}
  arr2
end

def running_total(arr1) # THIS ONE WORKS FOR EVERYTHING BUT []
  arr2 = []
  arr2 << arr1[0]
  arr1_counter = 1
  loop do
    break if arr1_counter == arr1.size #COULD BE WRONG PLACE OR SIZE >=
    arr2 << (arr1[arr1_counter] + arr2.last)
    arr1_counter += 1
  end
  arr2
end
=end # MY CODE
=begin # DEBUG
def running_total(arr1)
  p "this is arr1:"
  p arr1
  arr2 = []
  p 'this is arr2 after [] declaration:'
  p arr2
  arr2 << arr1[0]
  p "this is arr2 after 'arr2 << arr1[0]':"
  p arr2
  #arr1_counter = 1
  #loop do
  #  break if arr1_counter == arr1.size #COULD BE WRONG PLACE OR SIZE >=
  #  arr2 << (arr1[arr1_counter] + arr2.last)
  #  arr1_counter += 1
  #end 
  #p arr1
  #p arr2
end
# DOES THIS
irb(main):253:0> running_total([2, 5, 13])
"this is arr1:"
[2, 5, 13]                 
"this is arr2 after [] declaration:"
[]
"this is arr2 after 'arr2 << arr1[0]':"
[2]
=> [2]
irb(main):254:0> running_total([])
"this is arr1:"
[]
"this is arr2 after [] declaration:"
[]
"this is arr2 after 'arr2 << arr1[0]':"
[nil]
=> [nil]
=end # DEBUG

def running_total(arr1) # THIS ONE WORKS FOR EVERYTHING
  arr2 = []
  if arr1 == [] then return arr2
  else
    arr2 << arr1[0]
    arr1_counter = 1
    loop do
      break if arr1_counter == arr1.size 
      arr2 << (arr1[arr1_counter] + arr2.last)
      arr1_counter += 1
    end
    arr2
  end
end