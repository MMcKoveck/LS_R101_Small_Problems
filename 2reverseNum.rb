#=begin
Write a method that takes a positive integer as an argument 
and returns that number with its digits reversed. 
Examples:
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1
Don't' worry about arguments with leading zeros - 
Ruby sees those as octal numbers, which will cause confusing results. 
For similar reasons, the return value for our fourth example doesn't' have any leading zeros.
=end
#=begin PEDAC BECAME JUST MY CODE
def reversed_number(num)
  num.to_s.reverse.to_i
end
=end
#=begin MITCH MILLS CODE
number.digits.join.to_i

irb(main):003:0> 12345.digits
=> [5, 4, 3, 2, 1]

irb(main):004:0> x = 12345.digits
=> [5, 4, 3, 2, 1]
irb(main):005:0> x.join
=> "54321"
=end