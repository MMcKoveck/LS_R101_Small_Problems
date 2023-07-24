=begin
A continuation of the previous exercise.

The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. 
Prior to 1752, the Julian Calendar was used. 
Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.

Using this information, update the method from the previous exercise to 
determine leap years both before and after 1752.
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
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true
=end
=begin PEDAC
Look up Julian Calendar
do all the same as previous except?
=end # PEDAC
#=begin MY CODE
def leap_year?(year)
  year % 4 == 0
  #((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)
end
loop do
puts "Is it a leap year?"
year = gets.chomp.to_i
break if year == 0
leap_year?(year) ? (puts "yes") : (puts "no")
end

# NO DICE. TOO TIRED.
=end # MY CODE
=begin THEIR CODE
def leap_year?(year)
  if year < 1752 && year % 4 == 0
    true
  elsif year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

Discussion

The change to the original leap_year? method is quite small; 
just one additional if clause at the beginning of the method.

Further Exploration

Find a web page that talks about leap years or the different calendar systems, 
and talk about the interesting information you learned. 
For instance, how was the change from the Julian calendar to the Gregorian calendar 
handled in your ancestral lands? Do they even use these calendar systems? 
If you live someplace that doesn't use the Gregorian calendar, tell us about your calendar system.

=end # THEIR CODE
=begin FE
Interesting that the WIKI spoke about programming and food safety.
Calendars kind of make my head spin. It being so early doesn't help.
I learned the word "proleptic" though!
This stuff from the documentation is interesting but it doesn't work in IRB (yet)
julian_leap?(year) → true or false
Returns true if the given year is a leap year in the proleptic Julian calendar, false otherwise:

Date.julian_leap?(1900) # => true
Date.julian_leap?(1901) # => false
Related: Date.gregorian_leap?.

gregorian_leap?(year) → true or false
Returns true if the given year is a leap year in the proleptic Gregorian calendar, false otherwise:

Date.gregorian_leap?(2000) # => true
Date.gregorian_leap?(2001) # => false
Date.leap? is an alias for Date.gregorian_leap?.