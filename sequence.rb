#=begin
Write a method that takes an integer argument, 
and returns an Array of all integers, 
in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

Examples:
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]
=end
#=begin PEDAC BECAME MY CODE, WORKS
def sequence(num)
  (1..num).to_a
end
=end
#=begin THEIR CODE
def sequence(number)
  (1..number).to_a
end
This simply takes advantage of Range combined with to_a which creates a range 
from 1 up to the value of the supplied parameter number and then converts it to an array.
=end
#=begin FE WORKS!
Food for thought: what do you think sequence should return if the argument is not greater than 0. 
For instance, what should you do if the argument is -1? Can you alter your method to handle this case?

def sequence(num)
  num > 0 ? (1..num).to_a : (num..-1).to_a
end
=end