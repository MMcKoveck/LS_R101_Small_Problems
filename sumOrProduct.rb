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

range.each {|x| b += x} (b must == 0)
range.each {|x| b *= x} (b must == 1)

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

=begin THEIR CODE
def compute_sum(number)
  total = 0
  1.upto(number) { |value| total += value }
  total
end

def compute_product(number)
  total = 1
  1.upto(number) { |value| total *= value }
  total
end

puts ">> Please enter an integer greater than 0"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Oops. Unknown operation."
end
#=end #THEIR CODE
=begin
Discussion

For brevity and simplicity, our solution doesn't try too hard to validate the user input.
 Your own solution probably should try to validate input 
 and issue error messages as needed.

This solution first obtains the integer and operation to be performed from the user, 
then we perform the requested operation using one of two methods: 
compute_sum adds the numbers together, while compute_product multiplies them. 
Once we have the result, we just print it.

Further Exploration

The compute_sum and compute_product methods are simple and should be familiar. 
A more rubyish way of computing sums and products is with the Enumerable#inject method.
 #inject is a very useful method, but if you've never used it before, 
 it can be difficult to understand.

Take some time to read the documentation for #inject. 
(Note that all Enumerable methods can be used on Array.) 
Try to explain how it works to yourself.

Try to use #inject in your solution to this problem.
=end
#=begin FE
num = 0
loop do
  puts ">> Please enter an integer greater than 0:"
  num = gets.chomp.to_i
  break if num > 0
end
range = (1..num)
loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  input = gets.chomp.downcase
  if input == 's' 
    sum = (1..num).inject(:+)
    puts "The sum of the integers between 1 and #{num} is #{sum}."
    break
  elsif input == 'p' 
    product = (1..num).inject(:*)
    puts "The product of the integers between 1 and #{num} is #{product}."
    break
  else 
    puts "S & P is the choice for me."
    puts "(r/unexpectedletterkenny)"
    puts "Try Again with 'S' or 'P'."
  end
end
