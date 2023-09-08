#=begin
Given the array...
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
Write a program that prints out groups of words that are anagrams. 
Anagrams are words that have the same exact letters in them but in a different order. 
Your output should look something like this:
["demo", "dome", "mode"]
["neon", "none"] # THIS IS ALPHABETIZED NOT IN ORDER
#(etc)
=end
#=begin PEDAC
maybe sort initial array 
new groups array to contain all subgroups
split each word into letters
sort the letters
check all words agains all other words
if that matches, put both words in new array in groups
  make 1 array for every group of variations
make sure each array in groups is unique
flatten to unique sub arrays, no main array

MAYBE USE HELPER METHODS?
# HERE IS SUBSTRINGS TO WORK FROM
def substrings(string)
  result = []
  loop do
    string.length.times {|idx| result << string[0..idx]}
    string.slice!(0)
    break if string.length == 0
  end
  result
end

=end
#=begin MY CODE
def anagrams(array)

array.map {|x, y| x.split('').sort == y.split('').sort}
# COMPARE ELEMENTS
x.split('').sort == y.split('').sort # WORKS
# HOW MANY TIMES TO CHECK
(array.size-1).times do
# CHECK COUNTERS
groups = []
word1 = 0
word2 = word1 + 1
loops = array.size
# COMPARE ELEMENTS MORE SPECIFIC
array[word1].split('').sort == array[word2].split('').sort
# NEED TO CREATE AN ARRAY FROM POSITIVE RESULTS
[array[word1] if ]
word2 += 1 
break when word2 == array.size-1
reset counters at word1 += 1
##############################
# THIS WORKS BUT HAVE TO CLEAN IT UP!!!
def anagrams(array)
  #array.sort!
  groups = []
  word1 = 0
  word2 = 1
  # MAYBE A TOP LOOP STEP TO ADD A NEW SUB ARRAY TO GROUP FOR EACH NEW SEARCH GROUP
  loop do 
    groups << []
    groups[-1] << array[word1]
   # p "Before Loop: #{groups}"
    loop do
      
    #  p "Search For: #{array[word2]}"
      if array[word1].split('').sort == array[word2].split('').sort
        groups[-1] << array.delete(array[word2]) 
        word2 = 1
      else 
        word2 += 1
      end
      #word1 += 1
      #word2 += 1  #string[0..idx]
     # p "After Loop : #{groups}"
     # p "array.length: #{array.length}"
     # p "word2: #{word2}"
      break if word2 == array.length
    end #MAYBE GET A NIL AT THE END
    array.shift # OR MAYBE INCREMENT word1 +1
    word1 = 0
    word2 = 1
    
    break if array.length == 0
  end
  groups.each {|x| p x.sort}# SORT, DELETE SINGLES, DELETE REPEATS
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# CLEAN THIS UP!!! IT WORKS!
def anagrams(array)
  groups = []
  word1 = 0
  word2 = 1
  loop do 
    groups << []
    groups[-1] << array[word1]
    loop do
      if array[word1].split('').sort == array[word2].split('').sort
        groups[-1] << array.delete(array[word2]) 
        word2 = 1 #this is probably wrong - makes more steps
      else 
        word2 += 1
      end
      break if word2 == array.length
    end 
    array.shift
    word1 = 0
    word2 = 1
    break if array.length == 0
  end
  groups.each {|x| p x.sort}
end

# MAYBE MAKE COMPARISON INTO A HELPER METHOD
def value(word)
  word.split('').sort.join
end

def value_match?(wordA, wordB)
  value(wordA) == value(wordB) ? wordB : "x"
end
def anagrams(array)
  groups = []
  #loop do
    #groups << []
    #?# groups[-1] << array[0]
    loop do
      p check = array[0]
      groups[-1] << array.map {|x| value_match?(check, x)}
      p groups
      groups.flatten!(2).compact!
      p groups
      array.delete(array.map {|x| value_match?(check, x)})
      array.shift
      p array
      break if array.length == 0
    end
  #end
    groups.each {|x| p x.sort}
end
# I GIVE UP THIS IS TAKING TOO LONG
#=begin THEIR CODE
# Looks like it was a Hash. I considered using a hash.. Oh well.

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end

The trickiest part of this problem is figuring out how to check if two words are anagrams. 
Since anagrams are two words which contain exact same letters, but in different order, 
if we sort each anagram word, values should be the same. For example:

dome and mode are anagrams because when we sort both of them we get demo.

Now that we know how to find anagrams, 
we can use a hash to store the sorted version of the word as the key in the hash 
and its value will be an array of all anagrams of that word.

Translating this to code...we first initialize a hash result.

Then, we iterate over the words array and in each iteration:

We check if the sorted version of the word is already in the hash. 
If it is we add it to the value array.
If the sorted version is not in the hash we add it to the hash 
and the initial value of that key is just the array with that word in it.
In the end we print the values in the result hash.

=end
#=begin RICH'S' CODE (UGH!)
def anagrams(words)
  words.group_by { |word| word.chars.sort.join }.values
end
=end
#=begin RICH'S' TWEAKED
def anagrams(array)
  groups = array.group_by { |word| word.chars.sort.join }.values
  groups.each {|x| p x.sort}
end
array.group_by makes a hash from the array and .values is returning the values of that hash.
they are being assigned to the variable groups as an array of arrays.
without using .values, groups would contain this entire hash:
=> {"demo"=>["demo", "dome", "mode"], 
    "enno"=>["none", "neon"], 
    "deit"=>["tied", "diet", "edit", "tide"], 
    "eilv"=>["evil", "live", "veil", "vile"], 
    "flow"=>["fowl", "wolf", "flow"]}
instead it's' just an array of the keys, which are themselves arrays of strings that
match when .sort ed by .char acter and are re .join ed.    

each element (sub array) of group then needs to be alphabetically sorted and printed
