=begin
In the modern era under the Gregorian Calendar, 
leap years occur in every year that is evenly divisible by 4, 
unless the year is also divisible by 100. 
  If the year is evenly divisible by 100, 
  then it is not a leap year unless the year is evenly divisible by 400.

Assume this rule is good for any year greater than year 0. 
Write a method that takes any year greater than 0 as input, 
and returns true if the year is a leap year, or false if it is not a leap year.

Examples:
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true
=end
=begin PEDAC
return true if year
year mod 4 == 0 and 
year mod 400 true if year mod 100 true

correct order?
=end # PEDAC
=begin MY CODE
def leap_year?(year)
 # (((year % 400 == 0) && (year % 100 == 0)) || ((year % 4 == 0) && (year % 100 != 0)))
  (year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0))
end
loop do
puts "is it a leap year?"
year = gets.chomp.to_i
  if leap_year?(year)
    puts "yes"
  else
    puts "no"
  end
end

# ((year % 400 == 0) && (year % 100 == 0)) || ((year % 4 == 0) && (year % 100 != 0))
=end # MY CODE
=begin THEIR CODE
def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end
A shorter solution:
def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

(PRETTY MUCH WHAT I HAD)

The first solution takes this one step at a time by testing for the least common cases first; 
years divisible by 400, and years divisible by 100. 
If the year is anything else, then it is a leap year if it divisible by 4.

The second solution is more idiomatic, but also a little harder to read. 
It is, in effect, identical to the first solution, although the tests are turned around a little bit.
=end # THEIR CODE
=begin FE
The order in which you perform tests for a leap year calculation is important. 
For what years will leap_year? fail if you rewrite it as:
def leap_year?(year)
  if year % 100 == 0
    false
  elsif year % 400 == 0
    true
  else
    year % 4 == 0
  end
end
( 2000, etc will fail all the 100s)

Can you rewrite leap_year? to perform its tests in the opposite order of the above solution? 
That is, test whether the year is divisible by 4 first, then, if necessary, 
test whether it is divisible by 100, and finally, if necessary, 
test whether it is divisible by 400. 
Is this solution simpler or more complex than the original solution?

=end
def leap_year?(year)
  #(year % 4 == 0) && (if year % 100 == 0 && year % 400 == 0)
  ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)
end
loop do
puts "Is it a leap year?"
year = gets.chomp.to_i
break if year == 0
leap_year?(year) ? (puts "yes") : (puts "no")
end

=begin LUIS FERNANDO ANTUNES' CODE
# NICE TERNARY
def leap_year?(year)
  year % 100 == 0 ? year % 400 == 0 : year % 4 == 0
end
=end