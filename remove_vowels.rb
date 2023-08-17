#=begin
Write a method that takes an array of strings, and returns an array of the same string values, 
except with the vowels (a, e, i, o, u) removed.

Examples:
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

#=begin PEDAC
def remove_vowels(array)
 map array regex vowel.delete i

array.map! {|x| x.delete!('/[aeiou]/i')}

#=begin MY CODE # WORKS

def remove_vowels(array)
  array.map {|x| x.delete('/[aeiou]|[AEIOU]/')}
end
# JUST THE PREVIOUS ONE
def remove_vowels(array)
  array.map! {|x| x.delete('/[aeiou]/i')} # THE i IS NOT WORKING
end

=end # MY CODE
#=begin THEIR CODE
def remove_vowels(strings)
  strings.map { |string| string.delete('aeiouAEIOU') } # DOESN'T NEED ALL THT REGEX NOISE
end

Our solution uses String.delete to remove all of the vowels from each string. 
We use map to iterate through the array since it is ideal for transformations like this.

=end