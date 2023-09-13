=begin
Write a program that solicits 6 numbers from the user, 
then prints a message that describes whether or not 
the 6th number appears amongst the first 5 numbers.

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
=end
=begin PEDAC
make an array
make a question counter + array
loop it till the array has 5 entries
ask the last question
searh array for last answer
return interpolated result
=end
=begin my code WORKS!
questions = ['1st', '2nd', '3rd', '4th', '5th', 'last']
q_num = 0
search = []
loop do
  puts "Enter the #{questions[q_num]} number:"
  search << gets.chomp.to_i
  q_num += 1
  break if search.size == 6
end
num = search.pop
puts search.include?(num) ?
  "The number #{num} appears in #{search}." :
  "The number #{num} does not appear in #{search}."
=end  
# I COULD USE 6.times do FOR MY LOOP AND NOT NEED A BREAK LINE
#=begin THIS IS IT
questions = ['1st', '2nd', '3rd', '4th', '5th', 'last']
q_num = 0
search = []
6.times {
  puts "Enter the #{questions[q_num]} number:"
  search << gets.chomp.to_i
  q_num += 1 }
num = search.pop
puts search.include?(num) ?
  "The number #{num} appears in #{search}." :
  "The number #{num} does not appear in #{search}."
=end
# THIS IS MY OLD CODE
numbers = []
questions = ['1st', '2nd', '3rd', '4th', '5th', 'last']
position = 0
loop do
  puts "==> Enter the #{questions[position]} number:" 
  position += 1 
  break if numbers.size == 5     # WHAT A WEIRD LOOP BREAK!
  numbers << gets.chomp.to_i     # IT STILL ASKS THE 6TH QUESTION 
end
search = gets.chomp.to_i         # BUT PUTS THE ANSWER SOMEWHERE ELSE!
if numbers.include?(search) 
  puts "The number #{search} appears in #{numbers}." 
else
  puts "The number #{search} does not appear in #{numbers}."
end  

