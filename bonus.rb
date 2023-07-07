=begin
Write a method that takes two arguments, a positive integer and a boolean, 
and calculates the bonus for a given salary. 
If the boolean is true, the bonus should be half of the salary. 
If the boolean is false, the bonus should be 0.
These tests should return true:

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

=end


def calculate_bonus(salary, boolean)
  if boolean != true 
    bonus = 0
  else
    bonus = salary / 2
  end
end

=begin first try
def calculate_bonus(salary, boolean)
  bonus = salary / 2
  bonus = 0 if boolean != true
end
=end
# ABOVE AS A TERNARY (THIS IS MY ANSWER)
def calculate_bonus(salary, boolean)
  boolean != true ? (bonus = 0) : (bonus = salary / 2)
end

# THEIR CODE EVEN MORE SUCCINT don't need to doublecheck the truthiness of a boolean
def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
