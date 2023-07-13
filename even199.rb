# This IS THE SAME AS odd199 but even.
range = (1..99)  
range.each_entry do |x|
  puts x if x.even?
end

#=begin THEIR CODE
#Our solution is just a minor variation on the solution to print odd numbers. 
#This time, though, we increment the value by 1 with every iteration, 
#and only print it if it is even.

value = 1
while value <= 99
  puts value if value.even?
  value += 1
end

#=begin MY FES
1.upto(99) {|x| puts x if x.even?}

a = []                                 #Create Array
1.upto(99) {|i| a << i}                #Fill Array with 1..99
a.select {|x| puts x if x % 2 == 0}    #Array#select