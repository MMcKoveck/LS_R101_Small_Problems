=begin
Write a method that takes one argument, a positive integer, 
and returns a string of alternating 1s and 0s, always starting with 1. 
The length of the string should match the given integer.
Examples:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
The tests above should print true.
=end

def stringy(i)
  str = ''
  loop do
   str << '1' if i > 0
   i -= 1
   break if i == 0
   str << '0' if i > 0
   i -= 1
   break if i == 0
  end
  str
end

=begin
puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)
=end



=begin
# THIS KEPT THROWING ERRORS FOR ALL THE DOS AND ENDS
def stringy(i)
  str = ''
  loop do
    if i > 0 do 
      str << '1'
      i -= 1
      end
    end
    if i > 0 do
      str << '0'
      i -= 1
      end
    end
  break if i == 0
  end
  str
end
=end

# BEGIN THEIR CODE
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end
# CREATES AN ARRAY WHICH MUST BE JOINED AT THE END

# Modify stringy so it takes an additional optional argument that defaults to 1. 
# If the method is called with this argument set to 0, 
# the method should return a String of alternating 0s and 1s, 
# but starting with 0 instead of 1.
def stringy(i, start = 1)
  str = ''
  if start == 1
    loop do
     str << '1' if i > 0
     i -= 1
     break if i == 0
     str << '0' if i > 0
     i -= 1
     break if i == 0
    end
  else
    loop do
     str << '0' if i > 0
     i -= 1
     break if i == 0
     str << '1' if i > 0
     i -= 1
     break if i == 0
    end
  end
  str
end