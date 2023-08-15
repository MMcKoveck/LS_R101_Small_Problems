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

=end # THEIR CODE
#=begin FE

=end # FE


=end