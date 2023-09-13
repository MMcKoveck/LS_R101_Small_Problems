#=begin
Build a program that asks a user for the length and width of a room 
in meters and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

Example Run:

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).
=end
#+begin PEDAC
ask the questions
assign the variables .to_f
interpolate l * w 
interpolate sq ft to 2
j.floor(2)
=end
#=begin MY CODE
puts "Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_f
area = length * width
sq_ft = area * 10.7639
puts "The area of the room is #{area.floor(2)} square meters (#{sq_ft.floor(2)} square feet)."

#FE
puts "Enter the length of the room in feet: "
length = gets.chomp.to_f
puts "Enter the width of the room in feet: "
width = gets.chomp.to_f
areaSF = length * width
areaSI = areaSF * 12
areaCM = areaSF * 929.03
puts "The area of the room is :"
puts "#{areaSF.round(2)} square feet," 
puts "#{areaSI.round(2)} square inches,"
puts "and #{areaCM.round(2)} square cm."