=begin PROBLEM
Build a program that asks a user for the length and width of a room in meters 
and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

Example Run:
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).
=end
=begin PEDAC
inputs to_i
areaM = multiply inputs
areaF = multiply areaM * 10.7639
interpolate answer
=end #PEDAC

puts "Enter the length of the room in meters: "
length = gets.chomp.to_f
puts "Enter the width of the room in meters: "
width = gets.chomp.to_f
areaM = length * width
areaF = areaM * 10.7639
puts "The area of the room is #{areaM.round(2)} square meters (#{areaF.round(2)} square feet)."

#{areaF.truncate(2)} works as well

=begin THEIR CODE
SQMETERS_TO_SQFEET = 10.7639

puts '==> Enter the length of the room in meters: '
length = gets.to_f

puts '==> Enter the width of the room in meters: '
width = gets.to_f

square_meters = (length * width).round(2)
square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{square_meters} " + \
     "square meters (#{square_feet} square feet)."

Discussion

Our solution is straightforward. First we obtain the length, 
then we get the width. Next we perform our calculations, 
and then we print the results. We do no validation on our inputs, 
  and just assume the user will enter appropriate values.

We use a constant, SQMETERS_TO_SQFEET to store the conversion factor 
between square meters and square feet. 
This is good practice any time you have a number whose meaning is not 
immediately obvious upon seeing it.

The only thing that may be unfamiliar here is the round method 
(a method of the Float class), 
which is used to round our results to the nearest 2 decimal places. 
(You can also use Kernel#format to format the results, but format is harder to use.)

Further Exploration

Modify this program to ask for the input measurements in feet, 
and display the results in square feet, square inches, and square centimeters.
=end # FURTHER EXPLORATION
