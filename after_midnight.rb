#=begin
As seen in the previous exercise, 
the time of day can be represented as the number of minutes before or after midnight. 
If the number of minutes is positive, the time is after midnight. 
If the number of minutes is negative, the time is before midnight.

Write two methods that each take a time of day in 24 hour format, 
and return the number of minutes before and after midnight, respectively. 
Both methods should return a value in the range 0..1439.

You may not use ruby's' Date and Time methods.
Yes, we know that 24:00 isn't' a valid time in 24-hour format. 
Humor us, though; it makes the problem more interesting.
Examples:
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0
=end
#=begin PEDAC
2 methods
1440 minutes 0...1440 or 0..1439 range
midnight = 00:00
check 00: and :00
00: 24: == 00
convert string .to_i
after 00: 0 add x * 60, :00 add x  
before 00: 1440 minus x * 60, :00 minus x  
=end
#=begin MY CODE WORKS
def after_midnight(time)
  hours = time[0, 2].to_i
  hours == 24 ? hours = 0 : hours *= 60
  minutes = time[3, 2].to_i
  total = hours + minutes
end

def before_midnight(time)
  hours = time[0, 2].to_i
  hours == 24 ? hours = 0 : hours *= 60
  minutes = time[3, 2].to_i
  total = 1440 - hours - minutes
  total == 1440 ? total = 0 : total
end
=end # MY CODE