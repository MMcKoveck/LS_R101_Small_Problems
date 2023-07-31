#=begin
Given a string of words separated by spaces, 
write a method that takes this string of words and returns a string in which 
the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, 
and that the string will always contain at least one word. 
You may also assume that each string contains nothing but words and spaces.

Examples:
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'
=end
#=begin PEDAC
def swap(string)
  split(' ') to array
  swap letters (make this an internal method)
    remove first and last characters
      add last to front
      add first to end
  apply letter swap to array
  output array to string separated by spaces
  [0] no space
  [1+] leading space
=end # PEDAC
#=begin TEST
def swap(string)
  words = []
  words = string.split(' ')#.map(&:to_a)
  def swap_letters(word)
    letters = []
    letters << word[0]
    letters << word[-1]
    new_word = ''
    new_word << letters.pop
    new_word << word[1..-2]
    new_word << letters.pop
    new_word
  end
  p words
  words.each {|x| swap_letters(x)}.map!
  p words
end
  #words.each {|x| ' ' + x}
=end # TEST
#=begin MY CODE

# THIS WORKS (EXCEPT FOR SINGLES!!!!!)
def swap_letters(word)
  return word if word.length == 1
  letters = []
  letters << word[0]
  letters << word[-1]
  new_word = ''
  new_word << letters.pop
  new_word << word[1..-2]
  new_word << letters.pop
  new_word
end

def swap(string)
  words = []
  words = string.split(' ')
  new_words = words.map {|x| swap_letters(x)}
  new_string = new_words.join(' ')
end  
# END THIS WORKS