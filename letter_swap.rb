=begin
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
=begin PEDAC
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
=begin TEST
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

# THIS WORKS 
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
=begin THEIR CODE
def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0] # WHO KNEW IT  COULD BE SO EASY
  word
end

def swap(words)
  result = words.split.map do |word| #THIS IS ALL AT ONCE + NO NEW ARRAY
    swap_first_last_characters(word)
  end
  result.join(' ') # DIDN'T NEED TO MAKE A NEW VARIABLE
end
# OH MY GOD THIS IS SO MUCH SIMPLER
Our solution takes a straightforward approach; it simply chops the string into words, 
then iterates through all of the words using map, and produces an array of modified words. 
We then apply join to that array to produce our return value.

The tricky part here is actually swapping the first and last characters of each word. 
Because of the mild trickiness, we use a separate method. It uses this common idiom:

a, b = b, a # LINE 71

to exchange the values of a and b. In our method, a is the first letter of the word, 
and b is the last letter of the word. When Ruby sees something like this, 
it effectively creates a temporary array with the values from the right side ([b, a]), 
and then assigns each element from that array into the corresponding named variable:

a = b   # b is value from position 0 of temporary array (original value of b)
b = a   # a is value from position 1 of temporary array (original value of a)

Looked at another way, this is equivalent to:

temporary = [b, a]
a = temporary[0]
b = temporary[1]

This multiple-assignment syntax is powerful and complex, 
and it sometimes surprises people who haven't' seen it before. 
Nevertheless, you should at least learn and use this idiomatic form of the syntax, 
but beware of using the more complex forms allowed by Ruby.
=end #THEIR CODE
=begin FE
nope, just does the letters, not the word
=end # FE
