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
  array.map {|x| (x[1]).times{list << (x[0])} } # RETURNS [3, 1, 2] 
  list # RETURNS APPROPRIATE RESULT!!
end
=end # MY CODE
