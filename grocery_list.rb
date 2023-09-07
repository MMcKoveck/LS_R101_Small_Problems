#=begin
Write a method which takes a grocery list (array) of fruits with quantities 
and converts it into an array of the correct number of each fruit.

Example:
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
=end
#=begin PEDAC
def buy_friut(array)
  it's' an array of sub arrays, not hashes.
  iterate through main array
  add each sub_array[0] to new array (map?) sub_array[1].times
end
=end
#=begin MY CODE
def buy_fruit(array)
  list = array.map {|x| x[0] x[1].times {list.push}}#* x[1].times}  
end
# HAVING ENUMERATOR PROBLEMS
def buy_fruit(array)
  list = array.map {|x| x[1].times {list.push(x[0])}}#* x[1].times}  
end
# THIS KINDA WORKS, BUT NOT SEPARATE ARRAY ELEMENTS
def buy_fruit(array)
  list = array.map {|x| x[0] * x[1]} # RETURNS applesapplesapples, orange, bananasbananas
end

def buy_fruit(array)
  list = array.map {|x| x[0] * x[1]} # MAKES applesapplesapples etc
  list.each.split(array.each {|a| a[0]})  # TRIES TO SPLIT EACH STRING ACCORDING TO 1st array element
end

# THIS WORKS!!
def buy_fruit(array) 
  list = []
  array.each {|x| (x[1]).times{list << (x[0])} } # RETURNS [3, 1, 2] NO MAP CUZ LIST NEEDS TO EXIST B4
  list # RETURNS APPROPRIATE RESULT!!
end
=end # MY CODE
#=begin THEIR CODE
# SOLUTION 1:
def buy_fruit(list)
  expanded_list = []

  list.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times { expanded_list << fruit }
  end

  expanded_list
end
# SOLUTION 2:
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

In the first solution, we define a new array expanded_list and then iterate over the array 
passed in as an argument. 
For each subarray, we grab the quantity and the name of the fruit by using index reference 
and push each string the required number of times into our new array. 
We use the Integer.times method in order to execute the content of the block for the 
number of times specified by the caller, here quantity. 
On each iteration the block is executed and the fruit string is appended to our expanded list.

Note that we could use the block parameters to access each element of the subarrays, like this:

list.each do |fruit, quantity|
  quantity.times { expanded_list << fruit }
end

The second solution is more compact. 
We choose to use map in order to return a transformation of the array passed in as an argument. 
Here again we use the block parameters to access each element of the subarrays. 
We realize that we want to multiply each fruit by the given quantity, and try this:

fruit * quantity => "applesapplesapples"
This is not exactly what we want! 
We are doing string concatenation when in fact we want an array 
containing the required quantity of each fruit as separate strings. 
Let's' try something else:

[fruit] * quantity => ["apples", "apples", "apples"]

Great! We are almost done. We now have an array containing all of our fruits in nested subarrays:

[["apples", "apples", "apples"], ["orange"], ["bananas", "bananas"]]

All we need is Array.flatten to reduce it down to a single large array.
# THAT MEANS THAT THIS SHOULD WORK:
def buy_fruit(array)
  list = array.map {|x| [x[0]] * x[1]}.flatten 
end
# SO SQUARE BRACKETS SENDS ARRAY ELEMENTS, NOT CONCATENATING THE STRINGS!!!
# DOES NOT EVEN NEED THE LIST ASSIGNATION
def buy_fruit(array)
  array.map {|x| [x[0]] * x[1]}.flatten
end
# TO REITERATE THIS IS THEIR SECOND SOLUTION
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end
# SO SIMILAR!!
# |element1, element2| 
#=begin CODY MCKEEFRY'S' CODE
def buy_fruit(arr)
  arr.map { |ele| [ele.first] * ele.last }.flatten
end
# .first AND .last ARE AWESOME!!
=end
