#=begin
# Write a method that takes in a number and returns a string, placing a dash in between odd digits.

p dasherizer(2112) == '21-12'
p dasherizer(201105742) == '201-105-742'
p dasherizer(123456789) == '123456789'
p dasherizer(21121) == '21-121'

problem 
input Num
output string divided by - at odd numbers

Examples
2112 == '21-12'
multiple odds, multiple breaks
no consec odds, no breaks
3 odds in a row?

data structures
separate num into digits as an Array [2, 1, 1, 2]
compare 2 consec digits 
even skip over it 
odd check next digit
if that's' odd add - 
  original split Array
  move digits one at a Time
  << 
  odd? check if next [1] is odd
  << - 
  << next group 

Use conditional statements
array[0].even? ? final << array.shift.to_s : array[0].odd? && array[1].odd? ? final << array.shift.to_s, '-' : final << array.shift.to_s

def dasherizer(num)
  final = ''
  array = num.digits.reverse
  array.size do
    array[0].even? ? final << array.shift.to_s : array[1].odd? ? final << array.shift.to_s << '-' : final << array.shift.to_s
  end
  final
end

def dasherizer(num)
  final = ''
  array = num.digits.reverse
  array.size do
    if array[0].even? 
      final << array.shift.to_s 
    elsif array[1].odd?
      final << array.shift.to_s << '-' 
    else
      final << array.shift.to_s
    end
  end
  p final
end

final << array.shift.to_s if array[0].even?
array[1].odd? ? final << array.shift.to_s << '-' : final << array.shift.to_s

def dasherizer(num)
  final = ''
  array = num.digits.reverse
  array.size.times do    # MAYBE THIS COULD JUST BE A LOOP?
    final << array.shift.to_s if array[0].even?          # DEFAULT
    final << array.shift.to_s if array.size == 1         # TAKES CARE OF LAST ARRAY ELEMENT
    break if array.size == 0                             # ENDS IT EARLY SO NEXT LINE WONT ERROR WHEN NO [1]
    array[0].odd? && array[1].odd? ? final << array.shift.to_s << '-' : final << array.shift.to_s
  end
  final
end
