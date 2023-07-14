=begin
Write a program that solicits 6 numbers from the user, 
then prints a message that describes whether or not the 6th number 
appears amongst the first 5 numbers.

Examples:
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].
#=begin PEDAC
loop number query (there's' got to be a way to increment the questions)
(maybe another array of indicators?)
assign input to array
break assignment when array has 5 elements
search array for 6th input
print appropriate response
=end # PEDAC
#=begin MY CODE
numbers = []
questions = ['1st', '2nd', '3rd', '4th', '5th', 'last']
position = 0
loop do
  puts "==> Enter the #{questions[position]} number:" #FIND INCREMENTER
  position += 1 
  break if numbers.size == 5
  numbers << gets.chomp.to_i
end

search = gets.chomp.to_i
if numbers.include?(search) 
  puts "The number #{search} appears in #{numbers}." 
else
  puts "The number #{search} does not appear in #{numbers}."
end

