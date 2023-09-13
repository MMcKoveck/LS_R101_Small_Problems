#=begin
Write a method that takes one integer argument, which may be positive, negative, or zero. 
This method returns true if the number's' absolute value is odd. 
You may assume that the argument is a valid integer value.

Keep in mind that you're' not allowed to use #odd? or #even? in your solution.

Examples:
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
=end
#=begin PEDAC
def is_odd?(num)
  check % 2 == 0
end
=end # PEDAC
#=begin MY CODE
def is_odd?(num)
  num % 2 != 0
end
=end
#=begin FE
The Integer.remainder method performs a remainder operation in Ruby. 
Rewrite .is_odd? to use Integer.remainder instead of %

def is_odd?(num)
  num.remainder(2) == 1
end

OR

def is_odd?(num)
  num.remainder(2) != 0
end