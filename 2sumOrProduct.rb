=begin
Write a program that asks the user to enter an integer greater than 0, 
then asks if the user wants to determine the sum or product of all numbers 
between 1 and the entered integer.

Examples:
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
=end
=begin PEDAC
ask the questions
array = range (1..num)
inject(:+) or sum                     Array(1..num).sum
inject(:*) or product                 Array(1..num).inject(:*)
interpolate appropriate answer
[1..num].sum
Array(1..num).sum
irb(main):146:0> nar = Array(1..num)
=> [1, 2, 3, 4, 5, 6]
irb(main):149:0> nar.inject(:*)
=> 720
=end
#=begin MY CODE WORKS
puts "Please enter an integer greater than 0:"
num = gets.chomp.to_i
puts "Enter 's' to compute the sum, 'p' to compute the product."
action = gets.chomp.downcase
if action == 's'
  sum = Array(1..num).sum 
  puts "The sum of the integers between 1 and #{num} is #{sum}."

elsif action == 'p'
  prod = Array(1..num).inject(:*) 
  puts "The product of the integers between 1 and #{num} is #{prod}."
else puts "Try Again" 
end