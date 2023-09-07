#=begin
Write a method that determines the mean (average) of the three scores passed to it, 
and returns the letter value associated with that grade.

Numerical Score Letter	Grade
90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'
Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

Example:
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"
=end
#=begin PEDAC
def get_grade(num1, num2, num3)
  convert inputs to array
  use average(array) to determine number
  (maybe just do the math instead of making an array)
  use case statement to assign letter

def average(array)
  array.inject(:+) / array.size
end
=end # PEDAC
#=begin MY CODE WORKS
def get_grade(num1, num2, num3)
  number = (num1 + num2 + num3) / 3
  case
    when number >= 90 && number <= 100
      'A'
    when number >= 80 && number < 90
      'B'
    when number >= 70 && number < 80
      'C'
    when number >= 60 && number < 70
      'D'
    else
      'F'
  end
end
=end # MY CODE
#=begin THEIR CODE
def get_grade(s1, s2, s3)
  result = (s1 + s2 + s3)/3

  case result
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end
# CHECK OUT THE SHAPE OF THE CASE STATEMENT
# IT'S' NAMED ONCE AND IMPLIES THAT VARIABLE THROUGHOUT
# IT USES RANGES 
# IT USES thenS FOR THE RETURNS

The result is just the average of the three scores. The case statement does a comparison on it. 
This takes advantage of the fact that the comparison used by the case statement returns true if 
  the range includes the other object (essentially calling (range).include?(other_object).

You can therefore read it as:
when (90..100).include?(result)

=end
#=begin FE
How would you handle this if there was a possibility of 
extra credit grades causing it to exceed 100 points?

I would either make anything over 90 be 'A' 
when 90..1000 then 'A'
or
make a new case where anything over 100 would be 'A+'
when 101..1000 then 'A+'