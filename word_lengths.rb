#=begin
Write a method that takes a string as an argument, 
and returns an Array that contains every word from the string, 
to which you have appended a space and the word length.

You may assume that words in the string are separated by exactly one space, 
and that any substring of non-space characters is a word.

Examples:
word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []
=end
#=begin PEDAC
def word_lengths(string)
  split string
  iterate through array
  idx and idx.length
  maybe if sep elements, join every 2 zip?
  maybe can just zip idx and idx.length
  maybe just interpolate the 2 
=end
#=begin my code WORKS
def word_lengths(string)
  array = string.split
  array.map {|idx| idx + ' ' + idx.length.to_s}
end
=end
#=begin THEIR CODE WAS THE SAME
# INTERPOLATION WORKS TOO!!
def word_lengths(string)
  string.split.map { |word| "#{word} #{word.length}" }
end
# YOU CAN CREATE THE ARRAY USING .map ON THE STRING THEN INTERPOLATE THE 2
=end