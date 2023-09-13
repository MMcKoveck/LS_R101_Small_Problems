=begin
Write a program that prompts the user for two positive integers, 
and then prints the results of the following operations on those two numbers: 
addition, subtraction, product, quotient, remainder, and power. 
Do not worry about validating the input.

Example:
==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103
=end
=begin PEDAC
use an array of symbols
get the inputs
iterate through the array
=end
=begin MY CODE IT WORKS!!! THIS IS IT
puts "==> Enter the first number:"
num1 = gets.chomp.to_i
puts "==> Enter the second number:"
num2 = gets.chomp.to_i
array = [:+, :-, :*, :/, :%, :**]
array.each {|x| puts "==> #{num1} #{x} #{num2} = #{[num1, num2].inject(x)}"}
=end
#=begin NEW WITH FE
puts "==> Enter the first number:"
num1 = gets.chomp.to_f
num2 = ''
loop { 
  puts "==> Enter the second number:"
  num2 = gets.chomp.to_f
  break if num2 != 0 }
array = [:+, :-, :*, :/, :%, :**]
array.each {|x| puts "==> #{num1} #{x} #{num2} = #{[num1, num2].inject(x)}"}
#=end