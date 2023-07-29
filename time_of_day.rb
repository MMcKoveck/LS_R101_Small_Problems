=begin
The time of day can be represented as the number of minutes before or after midnight. 
If the number of minutes is positive, the time is after midnight. 
If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format 
and returns the time of day in 24 hour format (hh:mm). 
Your method should work with any integer input.

You may not use ruby's' Date and Time classes.

Examples:
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

Disregard Daylight Savings and Standard Time and other complications
=end
=begin PEDAC
How does time work?
60 min * 24 hrs = 1440 
irb(main):266:0> 60 * 24
=> 1440
irb(main):267:0> 3.divmod(60)
=> [0, 3]
irb(main):268:0> -4231.divmod(60)
=> [-71, 29]
irb(main):269:0> 1437.divmod(60)
=> [23, 57]
irb(main):270:0> -1437.divmod(60)
=> [-24, 3]
irb(main):271:0> -3.divmod(60)
=> [-1, 57]
irb(main):272:0> 800.divmod(60)
=> [13, 20]
so return_array[1] == minutes
   return_array[0] % 24 == hours?
irb(main):276:0> -4231.divmod(60)
=> [-71, 29]
irb(main):277:0> -71 % 24
=> 1
time_of_day(-4231) == "01:29"

interpolate for formatting?
(I found divmod on my own, hint says to use it and Kernel.format.. check that out)   
#=begin HINT
The Integer#divmod method and the % (modulo) operator may prove useful in your solution. You may also find Kernel#format handy for formatting your results.

You may want to solve this problem for non-negative arguments that are between 0 and 1439 first. 
Once you've' done that, try handling arguments that are greater than 1439. 
Finally, solve it for negative values. 
Think about how you might be able to simplify the final two parts. 
(Hint: one day is 1440 minutes)
=end # HINT
#=begin MY CODE
=begin TESTS
#Probably formatted incorrectly.. no leading zeroes
def time_of_day(num)
  time_array = num.divmod(60)
  "#{time_array[0] % 24}:#{time_array[1]}"
end
# yup!
irb(main):282:0> time_of_day(0)
=> "0:0"
irb(main):284:0> time_of_day(35)
=> "0:35"
irb(main):285:0> time_of_day(-1437)
=> "0:3"
irb(main):286:0> time_of_day(3000)
=> "2:0"
irb(main):288:0> time_of_day(-4231)
=> "1:29"
# NOW MAKE EACH NUMBER 2 DIGITS
sprintf('%.3d', 1)    # => "001"
sprintf('%.2d', (time_array[0] % 24))
"#{sprintf('%.2d', (time_array[0] % 24))}:#{sprintf('%.2d', time_array[1])}"
# THIS SHOULD BE IT
=end # TESTS
def time_of_day(num)
  time_array = num.divmod(60)
  "#{sprintf('%.2d', (time_array[0] % 24))}:#{sprintf('%.2d', time_array[1])}"
end
# WORKS!!
#=end # MY CODE
=begin BRANDON COREY'S CODE
def time_of_day(mins)
  mins.divmod(60).map.with_index do |time, idx|
    format('%02d', idx == 0 ? time % 24 : time)
  end.join(':')
end
THERE'S A LOT GOIN' ON IN THAT LITTLE BIT!
=end # BRANDON COREY'S CODE
THEIR CODE IS UGH. TOOO MUCH.
REVISIT TO DO THE FE. ESPECIALLY 2 & 3
mine could be refactored, time = time_array, format = sprintf
nothing fancy 