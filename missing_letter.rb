=begin

Write a method that takes an array of consecutive letters as input and returns the missing letter.

p determine_missing_letter(['a','b','c','d','f']) == 'E'
p determine_missing_letter(['o','q','r','s']) == 'P'
p determine_missing_letter(['H','J','K','L']) == 'i'
p determine_missing_letter([]) == []

=end
#=begin PEDAC
return empty array if input is empty
assign input array
Take [0] and [-1] as range elements
compare input array and range array with !include? # nope. include? is a boolean
 #result = range.each {|char| char if !(array.include?(char))}
 difference!
swapcase the result

array = ('a'..'z').to_a

=end # PEDAC
#=begin MY CODE
def determine_missing_letter(array)
  return [] if array == []
  range = (array[0]..array[-1]).to_a
  result = range.difference(array)
  result.join.swapcase
end
=end

#=begin BRICE BASTY'S' CODE SO SICK
def determine_missing_letter(array)
  array.empty? ? [] : ((array.first..array.last).to_a - array).join.swapcase
end

=end