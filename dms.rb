#=begin
Write a method that takes a floating point number that represents an angle between 0 and 360 degrees 
and returns a String that represents that angle in degrees, minutes and seconds. 
You should use a degree symbol (°) to represent degrees, a single quote (') ' to represent minutes, 
and a double quote (") "to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

Examples:
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

Note: your results may differ slightly depending on how you round values, but should be within a second or two of the results shown.

You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07".

'You may use this constant to represent the degree symbol:

DEGREE = "\xC2\xB0"

There are online calculators, but it's' not that tough to do the calculation from decimal degrees to degrees, minutes, and seconds by hand when needed; you start by breaking down your existing figure. 

The whole units of degrees will remain the same 
  (e.g., if your figure is 121.135 degrees longitude, start with 121 degrees).
Multiply the decimal portion of the figure by 60 (e.g., .135 * 60 = 8.1).
The whole number becomes the minutes (8).
Take the remaining decimal and multiply it by 60 (e.g., .1 * 60 = 6).
The resulting number becomes the seconds (6 seconds). Seconds can remain as a decimal if needed.
Take your three sets of numbers and put them together, 
  (e.g., 121°8'6" 'longitude would be equivalent to 121.135 degrees longitude).

#=begin PEDAC
def dms(num)
  take whole number = degree    num.floor gets whole number OR num.truncate
  multiply float by 60            /\.\d*/ gets evrtything after (and including) decimal
  whole number = minutes
  multiply float by 60
  whole number = seconds
  "degreeDEGREE + minutes' + seconds" "
   %(30°00'00") = "30°00'00\""   "%02d"

=end # PEDAC
#=begin MY CODE
DEGREE = "\xC2\xB0"
def dms(num)
  #DEGREE = "\xC2\xB0"
  deg = num.floor
  min = (num - deg) * 60 
  sec = (min - min.floor) * 60 

  "#{deg.to_s + DEGREE + min.floor.to_s + '\'' + sec.floor.to_s + '\"'}"
end  
# THIS WORKS
def dms(num)
  deg = num.floor
  min = (num - deg) * 60 
  sec = (min - min.floor) * 60 
  string = ''
  string << deg.to_s
  string << DEGREE
  string << "%02d" % min
  string << "\'"
  string << "%02d" % sec
  string << "\""
  string
end
# IRB CHECK
irb(main):1595:0> dms(0)
=> "0°00'00\""
irb(main):1596:0> dms(360)
=> "360°00'00\""
irb(main):1597:0> dms(30)
=> "30°00'00\""
irb(main):1598:0> dms(76.73)
=> "76°43'48\""
irb(main):1599:0> dms(254.6)
=> "254°35'59\"" # THIS IS OFF BY 1"
irb(main):1600:0> dms(93.034773)
=> "93°02'05\""
irb(main):1601:0> dms(0)
=> "0°00'00\""
irb(main):1602:0> dms(360)
=> "360°00'00\""
irb(main):1603:0> dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
=> true
irb(main):1604:0> dms(254.6) == %(254°36'00")
=> false  # THIS IS OFF BY 1"

# REFACTORED WITH format
# THIS IS THE BEST ONE
def dms(num)
  deg = num.floor
  min = (num - deg) * 60 
  sec = (min - min.floor) * 60 
  format(%(#{deg}#{DEGREE}%02d'%02d"), min, sec)
end

# USE THIS :
# format(%(#{deg}#{DEGREE}%02d'%02d"), min, sec)

=end # MY CODE
#=begin THEIR CODE
DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

# IRB divmod AND format CHECK
irb(main):1555:0> num
=> 93.034773
irb(main):1556:0> total_seconds = (num * 60).round
=> 5582
irb(main):1557:0> total_seconds.divmod(3600)
=> [1, 1982]
irb(main):1559:0> total_seconds
=> 5582
irb(main):1560:0> degrees, remaining_seconds = total_seconds.divmod(3600)
=> [1, 1982]
irb(main):1561:0> degrees
=> 1
irb(main):1562:0> remaining_seconds
=> 1982
irb(main):1563:0> minutes, seconds = remaining_seconds.divmod(60)
=> [33, 2]
irb(main):1564:0> minutes
=> 33
irb(main):1565:0> seconds
=> 2
irb(main):1566:0> degrees
=> 1
irb(main):1567:0> format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
=> "1°33'02\""

We start by defining some useful constants - including the supplied DEGREE constant. 
These constants aren't' essential, but they help with understanding what is going on in each step.

The method starts out by converting the number of degrees to seconds; this makes it easier to 
compute the whole number of degrees, minutes, and seconds. 
Next, we use divmod to get the whole number of degrees, 
and a remainder that represents the number of seconds in the fractional part of the original value. 
We then use divmod again to split the remainder into a whole number of minutes, 
and a whole number of seconds. The final step puts everything together with Kernel.format.

It's' worth noting that the desired output contains both single and double quote characters. 
Ruby provides a variety of ways to deal with quotes inside strings; 
the easiest uses %(), %q() or %Q() to delimit the string. We use %() here.

#=end # THEIR CODE
#=begin FE
Our solution returns the following results for inputs outside the range 0-360:
dms(400) == %(400°00'00")
dms(-40) == %(-40°00'00")
dms(-420) == %(-420°00'00")

Since degrees are normally restricted to the range 0-360, 
can you modify the code so it returns a value in the appropriate range when 
the input is less than 0 or greater than 360?

dms(400) == %(40°00'00")
dms(-40) == %(320°00'00")
dms(-420) == %(300°00'00")

THIS WOULD BE SIMILR TO THE 24HR PROBLEM

=end