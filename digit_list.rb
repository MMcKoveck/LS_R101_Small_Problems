#=begin
Write a method that takes one argument, a positive integer, 
and returns a list of the digits in the number.

Examples:
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

#=begin PEDAC
def digit_list(num)
  num to_s
  split string('')
  a to_i REMEMBER MAP VS EACH!!!

=end # PEDAC
#=begin MY CODE
def digit_list(num)
  num_array = num.to_s.split('')
  num_array.map {|x| x.to_i}
end

=end # MY CODE
#=begin THEIR CODE
Brute force:
def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end

Idiomatic Ruby:
(THIS IS BETTER THAN MINE:)

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

The brute force approach (which is not a derogatory term) 
chops off digits from the end of the number one at a time, adding them to an array, 
then returns the array. 
The tricky part of this loop is the use of Integer.divmod 
which divides number by 10, and returns two values: the result of performing an integer division, 
and the remainder. For example, 12345.divmod(10) returns [1234, 5], 
and has the advantage of being easy to understand.

The second solution uses an idiomatic approach. Though somewhat dense, 
it's' typical of the code you'll' encounter (and write!) in Ruby all the time. 
Let's' break it down.

Our goal is to convert a number to a list of its digits. 
First, we convert the number to a string, then split it into an array of numeric characters. 
This array is almost what we want, but we need an array of numbers, not an array of strings. 
Enumerable.map comes to the rescue. You might find the (&:to_i) part weird, 
but this is Ruby syntactic sugar; it's' shorthand for:

something.map { |char| char.to_i }

WHICH IS WHAT I DID!

=end # THEIR CODE
#=begin FE
NO FE. MAYBE EXPLORE chars
=end # FE
#=begin STEVEN DE JONGH'S' CODE
def digit_list(num)
  num.digits.reverse
end
=end STEVEN DE JONGH'S' CODE
#=begin WITHOUT THE REVERSE
irb(main):1390:1* def d_l(num)
irb(main):1391:1*   num.digits # TO CHECK .digits 
irb(main):1392:0> end
=> :d_l
irb(main):1393:0> d_l(12345)
=> [5, 4, 3, 2, 1] #HENCE THE CHAINED .reverse 
=end