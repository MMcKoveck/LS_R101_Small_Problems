=begin PEDAC
Print all odd numbers from 1 to 99, 
inclusive, 
to the console, 
with each number on a separate line.


  generate a range of numbers 1..99
  check is_odd?
  puts if odd
=end # PEDAC
#=begin MY CODE
range = (1..99)  
range.each_entry do |x|
  puts x if x.odd?
end
#=end # MY CODE

#=begin THEIR CODE
value = 1
while value <= 99
  puts value
  value += 2
end
=begin THEIR NOTES
There are a variety of different ways to approach this problem, 
so don't be worried if your solution is significantly different.

Our solution simply takes a very basic approach of counting up from 1 to 99 by 2s, 
and printing each value.

Further Exploration

Repeat this exercise with a technique different from the one you just used, 
and different from the solution shown above. 
You may want to explore the use Integer#upto or Array#select methods, 
or maybe use Integer#odd?'

=begin MY FE CODE
I really liked that while loop
here's an updog:
=end

1.upto(99) {|x| puts x if x.odd?}

# here's an Array#select:'

a = []                                 #Create Array
1.upto(99) {|i| a << i}                #Fill Array with 1..99
a.select {|x| puts x if x % 2 != 0}    #Array#select

(1..99).each {|x| puts x if x.odd?}