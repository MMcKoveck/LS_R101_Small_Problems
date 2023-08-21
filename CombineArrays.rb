#=begin
Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

Example:

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

#=begin PEDAC
use | or .union

#=begin MY CODE
def merge(array1, array2)
  array1 | array2
end

# OR

def merge(array1, array2)
  array1.union(array2)
end
=end # MY CODE
#=begin THIER CODE
def merge(array_1, array_2)
  array_1 | array_2
end
# SAME !!

In this exercise we utilize the Ruby method Array#|. 
This is a method that gives the set union of two arrays, 
so the result contains no duplicates. It works perfectly for our merge method. 
The union part of this method means that we get back all the elements that 
both array_1 and array_2 might contain, but without duplicates.
=end # THEIR CODE
#=begin FE
How did you go about solving this one? Using this method for set union is convenient, 
but what if we didn't' have it? There are certainly a few other ways to go about solving this exercise.
SEE MY SECOND EXAMPLE (AFTER 'OR')
#=begin CODY MCKEEFRY'S CODE
def merge(arr1, arr2)
  (arr1 + arr2).uniq
end
#=begin MITCH MILLS' CODE
def merge(arr1, arr2)
  arr2.inject(arr1, :<<).uniq
end
#=begin SHAWN GRYCKI'S CODE
I solved this by chaining methods I remembered through repetition. Set union, or Array#union, 
seems like the equivalent of all these methods wrapped into one, 
but I wasn't' aware of it going into this exercise

def merge(array1, array2)
  array1.clone.push(array2).flatten.uniq
end

=end