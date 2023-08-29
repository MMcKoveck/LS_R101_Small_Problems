#=begin
Write a method that takes a single String argument 
and returns a new string that contains the original value of the argument 
with the first character of every word capitalized 
and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

Examples:
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

=end
#=begin PEDAC
def word_cap(string)
  make new string? array?
  use regex to make word boundaries
  maybe that's too much, 'maybe string.split(' ')
  can I chain capitalize? Nope.
  map capitalize and inject a space to new string

=end # PEDAC
#=begin MY CODE WORKS
def word_cap(string)
  words = string.split
  words.map {|x| x.capitalize!}
  words.join(' ')
end
=end # MY CODE
#=begin THEIR CODE
def word_cap(words)
  words_array = words.split.map do |word|
    word.capitalize
  end
  words_array.join(' ')
end

We can also write this more succinctly as:

def word_cap(words)
  words.split.map(&:capitalize).join(' ')
end

# THIS IS AWESOME HERE'S' AN EXPLANATION

In the second solution, (&:method_name) is shorthand notation for { |item| item.method_name }. 
Thus, &:capitalize translates to:
do |word|
  word.capitalize
end
We can use this shorthand syntax with any method that has no required arguments.
# REMEMBER AND USE THIS!!!
#=begin FE
Ruby conveniently provides the String.capitalize method to capitalize strings.
Without that method, how would you solve this problem? Try to come up with at least two solutions.
Regex, 
#=begin ERIC QIAN'S' CODE
def word_cap_fe(str)
  str.split.map do |word|
    word.chars.each_with_index do |char, idx|
      char.downcase!
      char.upcase! if idx == 0 #I LIKE THIS
    end.join
  end.join(' ')
end
#=begin CODY MCKEEFRY'S' CODE (SIMILAR APPROACH)
def word_cap(str)
  arr = str.split(" ")
  arr.map do |word|
    word[0] = word[0].upcase
    word[(1..-1)] = word[(1..-1)].downcase
  end
  arr.join(' ')
end