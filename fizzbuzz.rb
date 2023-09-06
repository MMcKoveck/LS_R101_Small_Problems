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
=end
#=begin CODY MCKEEFRY'S' CODE
# He just works from the range without making a new array and mapping that. 
def fizzbuzz(num1, num2)
  (num1..num2).each do |num|
    if num % 3 == 0 && num % 5 == 0
      puts "fizzbuzz"
    elsif num % 3 == 0
      puts "fizz"
    elsif num % 5 == 0
      puts "buzz"
    else
      puts num
    end
  end
end
=end
#=begin DANIEL CHAE VIA MITCH MILLS
# IS WHAT I WAS THINKING EARLIER!!
I always enjoy reading and figuring out Daniel Chae's' solutions. 
The following is his one-liner that I expanded out so that I could figure out how it worked.

In particular the [["Fizz"][num % 3], ["Buzz"][num % 5]].compact part had me baffled 
for a little while until I figured out he was using array indexing. 
Since there's' only one element in, for example ["Fizz"], and that element is at index 0, 
if [num % 3] evaluates to any result other than 0, the expression ["Fizz"][num % 3] will return nil.

def fizzbuzz(start, stop)
  result = (start..stop).map do |num|
    word = [["Fizz"][num % 3], ["Buzz"][num % 5]].compact
    word.empty? ? num : word.join
  end
  puts result.join(", ")
end

# DANIEL CHAE ACTUAL
# one-liner
def fizzbuzz(i, j)
  puts (i..j).map { |n| (x = [["Fizz"][n % 3], ["Buzz"][n % 5]].compact).empty? ? n : x.join }.join(", ")
end

# recursive
def fizzbuzz(i, j)
    print((x = "FizzBuzz"[(i % 3 == 0 ? 0 : 4)...(i % 5 == 0 ? 8 : 4)]).empty? ? i : x, (i < j ? ", " : "\n")); fizzbuzz(i+1, j) if i < j
end
=end
#=begin THEIR CODE
def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end

There may be a couple of things that you haven't' encountered in this solution. 
First, notice that we use a case statement in the fizzbuzz_value method. 
This case statement doesn't' have a value next to case for comparison. 
When using a case statement in this form, we get the same functionality as if we used 
  an if/elsif/else conditional.

Another thing of interest is that there isn't' anything other than that case statement 
in fizzbuzz_value method. 
This works because a case statement returns the value from the last line of the matched when branch. 
For example, if a number is divisible only by 3, then 'Fizz' is returned from the case statement. 
That return value then acts as the return value for the method, 
since there are no other lines after this case statement.
=end
# MY CODE WITH ', ' WORKS!!!
def fizzbuzz(num1, num2)
  array = (num1..num2)
  fb = array.map {|idx| 
    if idx % 3 == 0 && idx % 5 == 0
     'FizzBuzz'
    elsif idx % 3 == 0 
     'Fizz'
    elsif idx % 5 == 0
     'Buzz'
    else
     idx
    end
    }
    puts fb.join(', ')
end
=end