#=begin
Write a method that takes an Array of Integers between 0 and 19, 
and returns an Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, 
twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

Examples:
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
#=begin PEDAC
=end # PEDAC
#=begin MY CODE
=end # MY CODE
#=begin THEIR CODE
NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end
The secret to solving this problem is to use a data structure of some kind to map numbers 
to their English names. Once you've done this, read the documentation for Enumerable#sort_by, 
and construct a call that sorts the numbers by each number's corresponding English name.
=end # THEIR CODE
#=begin FE
Why do you think we didn't' use 'Array#sort_by!' instead of 'Enumerable#sort_by?'

For an extra challenge, rewrite your method to use 'Enumerable#sort' (unless you already did so).
=end #FE
