# Write a method that takes two arguments, a string and a positive integer, 
# and prints the string as many times as the integer indicates.

def repeat(a, i) 
  i.times {puts a}
end 
  
repeat('Hello', 3)

# While this is short, it could be easier to read with more descriptive variables. 
