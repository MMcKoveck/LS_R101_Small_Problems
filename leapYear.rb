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
#=begin MY CODE
def leap_year?(year)
  (((year % 400 == 0) && (year % 100 == 0)) || ((year % 4 == 0) && (year % 100 != 0)))
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
