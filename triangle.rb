#=begin MY CODE
puts "ENTER A TRIANGLE SIZE: "
size = gets.chomp.to_i

def triangle(size)
  starString = ''
  loop do
    starString << '*'
    puts starString.rjust(size) #(.rjust or .ljust to choose sides)
    break if starString.length == size
    
  end
end

triangle(size)
#=ends
#=begin FURTHER EXPLORATION CODE
puts "ENTER AN UPSIDE DOWN TRIANGLE SIZE: "
size = gets.chomp.to_i

def triangleU(size)
  starString = '*' * size
  loop do
    puts starString.rjust(size) #(.rjust or .ljust to choose sides)
    starString.chop!
    break if starString.length == 0

  end
end

triangleU(size)
#=end FURTHER EXPLORATION CODE
=begin
make new string
  right justify size          starString.rjust(size)
  one star on end of string
  loop size number of times
 size.times {|star| puts starString.rjust(size) << '*'}
# =end

FIRST TRY ONLY LOOPS "    *"
def triangle(size)
  starString = ''
  loop do
    puts starString.rjust(size) << '*'
    break if starString.length == size
  end
end
=end
=begin THEIR CODE
def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end
Discussion

For this problem we have an inverse relationship between 
the number of spaces and the number of stars that should be printed on each line. 
If we are on the first line, we print num - 1 spaces and 1 star. 
If we are on the second line we print num - 2 spaces and 2 stars. And so forth.

We do just that by initially setting stars to 1, and spaces to num -1. 
  On each iteration, we output the number of spaces and stars, 
  and then we decrement the number of spaces and increment the number of stars. 
  This will give us the desired result.

Further Exploration

Try modifying your solution so it prints the triangle upside down 
from its current orientation. 
Try modifying your solution again so that you can display 
the triangle with the right angle at any corner of the grid.
=end # THEIR CODE
