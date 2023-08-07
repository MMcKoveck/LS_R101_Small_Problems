#=begin
Modify the word_sizes method from the previous exercise to exclude non-letters 
when determining word size. For instance, the length of "it's" is 3, not 4.

Examples:
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}
=end
#=begin PEDAC
use original working method
remove all non letter characters delete('^a-zA-Z') from split string
then count accordingly
=end # PEDAC
#=begin MY CODE

=end #MY CODE
#=begin THEIR CODE
def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end

The only change we need to make to this method is to make sure that it does not count non-letter 
characters in determining word sizes. 
This is easy to do: we simply delete all non-letters from each word before we compute the size.
=end # THEIR CODE
#=begin FE
If you haven't encountered String#delete before, take a few minutes to read up on it, 
and its companion String#count (you need to read about #count to get all of the information 
you need to understand #delete).
=end FE
