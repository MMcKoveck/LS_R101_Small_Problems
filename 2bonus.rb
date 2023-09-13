#=begin
Write a method that takes two arguments, a positive integer and a boolean, 
and calculates the bonus for a given salary. 
If the boolean is true, the bonus should be half of the salary. 
If the boolean is false, the bonus should be 0.

Examples:
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
=end
#=begin PEDAC BECAME MY CODE WORKS
def calculate_bonus(salary, boolean)
  boolean == true ? salary / 2 : 0
end
=end
#=begin THEIR CODE
def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end
# REMEMBER IMPLIED TRUTHINESS!!
The solution to this exercise takes advantage of the ternary operator. 
We're' able to use bonus as the condition because it's' a boolean, 
which means its value will only be true or false. 
If it's' true, then we divide salary by 2 and return the quotient. 
If it's' false, then we return 0.
=end