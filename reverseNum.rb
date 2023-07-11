=begin
Write a method that takes a positive integer as an argument 
and returns that number with its digits reversed.

Examples:

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

define method with 1 argument
create blank object 
take rear element and add it to object
return flipped object


def reversed_number(num)
  mun = ''
  num.to_s.each_char do |digit|
    mun << num.pop
  end
  mun.to_i
end
=end
## THIS ALL WAS MAYBE TOO MUCH
## MAYBE I JUST REVERSE THE INPUT?
## CAN I DO IT WITH JUST INTEGERS? OR SWITCH .to_i?
def reversed_number(num)
  num.to_s.reverse!.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
