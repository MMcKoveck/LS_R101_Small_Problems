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
