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

=end # MY CODE


=end