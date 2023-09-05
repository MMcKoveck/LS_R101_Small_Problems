=begin
Write a method that takes two arguments: the first is the starting number, 
and the second is the ending number. 
Print out all numbers from the starting number to the ending number, 
except if a number is divisible by 3, print "Fizz", 
if a number is divisible by 5, print "Buzz", 
and finally if a number is divisible by 3 and 5, print "FizzBuzz".

Example:
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
=end
=begin PEDAC
def fizzbuzz(start, end)
  make an array ranged from start to end using ..
  Check FB first 
print 'FizzBuzz' if idx % 3 == 0 && idx % 5 == 0 
elsif print 'Fizz' if idx % 3 == 0 
elsif print 'Buzz' if idx % 5 == 0
else print idx


maybe I don't' need 3 steps. 
maybe just one for 3 is F and one for 5 is B and 35 is FB
check this later

=end # PEDAC
#=begin MY CODE WORKS!
def fizzbuzz(num1, num2)
  array = (num1..num2)
  array.map {|idx| 
    if idx % 3 == 0 && idx % 5 == 0
      puts 'FizzBuzz'
    elsif idx % 3 == 0 
      puts 'Fizz'
    elsif idx % 5 == 0
      puts 'Buzz'
    else
      puts idx
    end
    }
end
# fizzbuzz(1, 15)