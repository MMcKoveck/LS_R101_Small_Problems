=begin
Write a program that prompts the user for two positive integers, 
and then prints the results of the following operations on those two numbers: 
addition, subtraction, product, quotient, remainder, and power. 
Do not worry about validating the input.

Example
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

=begin PEDAC
get 2 inputs
puts all arithmetic equations 
=end
=begin MY CODE

puts "==> Enter the first number:"
first = gets.chomp.to_i
puts "==> Enter the second number:"
second = gets.chomp.to_i
puts "==> #{first} + #{second} = #{first + second}"
puts "==> #{first} - #{second} = #{first - second}"
puts "==> #{first} * #{second} = #{first * second}"
puts "==> #{first} / #{second} = #{first / second}"
puts "==> #{first} % #{second} = #{first % second}"
puts "==> #{first} ** #{second} = #{first ** second}"

=begin THEIR CODE
def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first number:")
first_number = gets.chomp.to_i
prompt("Enter the second number:")
second_number = gets.chomp.to_i

prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
prompt("#{first_number} ** #{second_number} = #{first_number**second_number}")
#=end

There are some edge cases to consider in this exercise. 
We have to be careful of not having a second number that is zero. 
What if we wanted to use floats instead of integers?
How does this change this problem?
=end

puts "==> Enter the first number:"
first = gets.chomp.to_f
second = nil
loop do
  puts "==> Enter the second number:"
  second = gets.chomp.to_f
  break if second != 0
end
puts "==> #{first} + #{second} = #{(first + second).round(2)}"
puts "==> #{first} - #{second} = #{(first - second).round(2)}"
puts "==> #{first} * #{second} = #{(first * second).round(2)}"
puts "==> #{first} / #{second} = #{(first / second).round(2)}"
puts "==> #{first} % #{second} = #{(first % second).round(2)}"
puts "==> #{first} ** #{second} = #{(first ** second).round(2)}"

=begin CODY McKEEFRY'S AWESOME CODE
def get_nums()
  num1 = gets.chomp.to_i
  num2 = gets.chomp.to_i
  return num1, num2
end

arr = [:+, :-, :*, :/, :%, :**]
num1, num2 = get_nums()
arr.each do |operator|
    puts "#{num1} #{operator} #{num2} = #{num1.send(operator, num2)}"
  end

=end  