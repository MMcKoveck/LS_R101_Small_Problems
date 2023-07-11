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
puts "The area of the room is #{areaM} square meters (#{areaF.round(2)} square feet)."

#{areaF.truncate(2)} works as well