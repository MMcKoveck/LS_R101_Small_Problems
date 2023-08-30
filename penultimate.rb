#=begin
Write a method that returns the next to last word in the String passed to it as an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.

Examples: 
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'
=end
#=begin PEDAC BECAME MY CODE WORKS
Split string by spaces
return index -2
=end
#=begin MY CODE

def penultimate(string)
  string.split[-2]
end
=end
#=begin THEIR CODE
def penultimate(words)
  words_array = words.split
  words_array[-2]
end
# IT'S' WEIRD HOW SOMETIMES THEY WANT AN ARRAY AND SOMETIMES THEY DON'T'.
=end
#=begin FE
Our solution ignored a couple of edge cases because we explicitly stated that you didn't'
 have to handle them: strings that contain just one word, and strings that contain no words.

Suppose we need a method that retrieves the middle word of a phrase/sentence. 
What edge cases need to be considered? 
How would you handle those edge cases without ignoring them? 
Write a method that returns the middle word of a phrase or sentence. 
It should handle all of the edge cases you thought of.

find middle word
what if array is even?
middle -1?
middle +1?
middle 2 words?
let's' do middle 2 words.
  if array size % 2 == 0, get array size /2 and array size /2 +1
  else get array size /2 +1

def middle(words)
  words_array = words.split
  if words_array.size % 2 == 0
    words_array[(words_array.size) / 2 - 1] + ' ' + words_array[(words_array.size) / 2]
  else
    words_array[(words_array.size) / 2]
  end
end

def middle(words)
  array = words.split
  if array.size % 2 == 0
    array[(array.size) / 2 - 1] + ' ' + array[(array.size) / 2]
  else
    array[(array.size) / 2]
  end
end