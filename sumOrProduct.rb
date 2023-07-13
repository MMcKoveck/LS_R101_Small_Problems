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
Ask for input
create array or range or upto from 1..input
Ask for direction s/p (downcase)
if s add all elements
  output specific response
if p multiply all elements
  output specific response

  check for negatives or zero?
  floats?
  appropriate direction?
=end # PEDAC
#=begin MY CODE
puts ">> Please enter an integer greater than 0:"
num = gets.chomp.to_i
range = (1..num)
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
input = gets.chomp.downcase
if input == 's' 
  b = 0 
  range.each {|x| b += x}
  puts "The sum of the integers between 1 and #{num} is #{b}."
elsif input == 'p' 
  b = 1
  range.each {|x| b *= x}
  puts "The product of the integers between 1 and #{num} is #{b}."
else 
  puts "S & P is the choice for me."
  puts "(r/unexpectedletterkenny)"
  puts "Try Again"
end

# range.each {|x| b += x} (b must == 0)
# range.each {|x| b *= x} (b must == 1)