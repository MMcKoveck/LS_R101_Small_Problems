#=begin
Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.
=end

range, 1..99 odd?
# WORKS
(1..99).each {|x| puts x if x.odd?}
=end
#=begin THEIR CODE
value = 1
while value <= 99
  puts value
  value += 2
end

There are a variety of different ways to approach this problem, 
so don't' be worried if your solution is significantly different.

Our solution simply takes a very basic approach of counting up from 1 to 99 by 2s, 
and printing each value.
=end
#=begin FE
Repeat this exercise with a technique different from the one you just used, 
and different from the solution shown above. 
You may want to explore the use Integer.upto or Array.select methods,
 or maybe use Integer.odd?

1.upto(99) {|x| puts x if x.odd?}
