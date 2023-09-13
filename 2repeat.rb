Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

Example:
repeat('Hello', 3)
=end
#=begin PEDAC
def repeat(word, num)
  num.times puts word
end
# THIS DOES 3 IN A ROW
def repeat(word, num)
  puts word * num
end
# FORGOT THE {} WORKS
def repeat(word, num)
  num.times {puts word}
end