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
  puts "==> Enter the #{questions[position]} number:" 
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

# MY OWN FE
# I REALLY WANTED A TERNARY TO WORK HERE, BUT I WAS TOO IMPATIENT!
# THIS WORKS THOUGH!!
# BUT FOR READABILITY, I LIKE THE if/else STATEMENT MORE
=begin
puts (numbers.include?(search) ?
  "The number #{search} appears in #{numbers}." :
  "The number #{search} does not appear in #{numbers}.")
=end

=begin THIS DUDE CODY MCKEEFRY'S CODE IS GREAT

text_arr = %w(1st 2nd 3rd 4th 5th)
arr = []
(0..4).each do |x|
  puts "Enter the #{text_arr[x]} number:"
  arr[x] = gets.chomp.to_i
end
puts "Enter the last number:"
last_num = gets.chomp.to_i
puts (arr.include?(last_num) ?
  "The number #{last_num} appears in #{arr}" :
  "The number #{last_num} does not appear in #{arr}")

  =end