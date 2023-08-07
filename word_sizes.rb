#=begin
Write a method that takes a string with one or more space separated words 
and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

Examples:

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

=end
#=begin PEDAC
def word_sizes(string)
  split string to new array
  hash.new
  array length = to_sym (k) sort
  assign symbols to keys in hash
  array length = (v) += 1
  hash
=end # PEDAC

#=begin MY CODE TESTS
def word_sizes(string)
  string_array = string.split
  hash = Hash.new
  p string_array
  array_length = string_array.map {|x| x.size}#.sort.to_sym}
  p array_length
  array_length.map! {|x, y| x <=> y}
end
#new 1
def word_sizes(string)
  string_array = string.split
  hash = Hash.new
  p string_array
  array_length = string_array.sort_by(&:length).map {|x| x.size}#.sort.to_sym}
  p array_length
  
  #array_length.map! {|x, y| x <=> y}
end
irb(main):899:0> word_sizes('the fightin\' fnords')
["the", "fightin'", "fnords"]
[3, 6, 8]
=> [3, 6, 8]
#new 2
def word_sizes(string)
  string_array = string.split
  hash = Hash.new
  p string_array
  array_length = string_array.sort_by(&:length).map {|x| x.size.to_s.to_sym}#.sort.to_sym}
  p array_length
  
  #array_length.map! {|x, y| x <=> y}
end
irb(main):909:0> word_sizes('the fightin\' fnords')
["the", "fightin'", "fnords"]
[:"3", :"6", :"8"]
=> [:"3", :"6", :"8"]
# DON'T USE SYMBOLS
#new 3
def word_sizes(string)
  string_array = string.split
  hash = Hash.new
  p string_array
  array_length = string_array.sort_by(&:length).map {|x| x.size}#.sort.to_sym}
  p array_length
  hash = array_length.map {|k, v| k => 0,}
  p hash
  
end
#new 4
def word_sizes(string)
  string_array = string.split
  hash = Hash.new
  p string_array
  array_length = string_array.sort_by(&:length).map {|x| x.size}#.sort.to_sym}
  p array_length
  hash = Hash[array_length.collect {|v| [v, v += 1]}]
  p hash
  
end
irb(main):986:0> word_sizes('the fightin\' fnords')
["the", "fightin'", "fnords"]
[3, 6, 8]
{3=>4, 6=>7, 8=>9}
=> {3=>4, 6=>7, 8=>9}


hash = Hash[array_length.collect {|v| [v += 1]}]
#new 4
def word_sizes(string)
  string_array = string.split
  hash = Hash.new
  p string_array
  array_length = string_array.sort_by(&:length).map {|x| x.size}#.sort.to_sym}
  p array_length
  hash = Hash[array_length.collect {|v| [v, v = 0]}]
  p hash
  
end
irb(main):1010:0> word_sizes('for the fightin\' fnords')
["for", "the", "fightin'", "fnords"]
[3, 3, 6, 8]                                   
{3=>0, 6=>0, 8=>0}                             
=> {3=>0, 6=>0, 8=>0} 

hash.each {|k, v| v += 1 if k == array_length.map}

array_length.zip(array_length.map(array_length.size)).to_h

def word_sizes(string)
  string_array = string.split
  hash = Hash.new
  p string_array
  array_length = string_array.sort_by(&:length).map {|x| x.size}#.sort.to_sym}
  p array_length
  hash = Hash[array_length.collect {|v| [v, v = 0]}]
  p hash
  hash.each {|k, v| array_length.map {v += 1 if k == array_length}}
  p hash
  
end

#new 6
def word_sizes(string)
  string_array = string.split
  hash = Hash.new
  p string_array
  array_length = string_array.sort_by(&:length).map {|x| x.size}#.sort.to_sym}
  p array_length
  hash = Hash[array_length.collect {|v| [v, (v * v) / v ]}]
  p hash
  
end
irb(main):986:0> word_sizes('the fightin\' fnords')
["the", "fightin'", "fnords"]
[3, 6, 8]
{3=>4, 6=>7, 8=>9}
=> {3=>4, 6=>7, 8=>9}

def word_sizes(string)
  string_array = string.split
  hash = Hash.new
  p string_array
  array_length = string_array.sort_by(&:length).map {|x| x.size}#.sort.to_sym}
  p array_length
  hash = Hash[array_length.collect {|v| [v, v = 0]}]
  p hash
  hash.each {|k, v| array_length.map {v += 1 if k == array_length.map}}
  p hash
  
end

hash.each {|k, v| v += 1 if k == array_length.map}
hash.each do |k, v| 
  if k == array_length.map
    v += 1 
  end
end

def word_sizes(string)
  string_array = string.split
  hash = Hash.new
  p string_array
  array_length = string_array.sort_by(&:length).map {|x| x.size}#.sort.to_sym}
  p array_length
  hash = Hash[array_length.collect {|v| [v, v = 0]}]
  p hash
  hash.each do |k, v| 
    if k == array_length.each
      v += 1 
    end
  end
end
irb(main):1211:0> word_sizes('for the fightin\' fnords')
["for", "the", "fightin'", "fnords"]
[3, 3, 6, 8]
{3=>0, 6=>0, 8=>0}
=> {3=>0, 6=>0, 8=>0}

def word_sizes(string)
  string_array = string.split
  hash = Hash.new
  p string_array
  array_length = string_array.sort_by(&:length).map {|x| x.size}#.sort.to_sym}
  p array_length
  hash = Hash[array_length.collect {|v| [v, v = 0]}]
  p hash
  #hash.each do |k, v| 
    if array_length.each == hash{|k,v| k}#[k]
      hash {|k,v| v += 1}#[v += 1]#.each {|k,v| v += 1}
    end
  #end
end
# I STILL NEED TO ITERATE THROUGH array_length 
# IF array_length == hash k then hash v += 1

# I GIVE UP
=end
#=begin THEIR CODE
def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end
The main goal of this problem is to count the number of words of each size. 
To do that, we first need to obtain a list of the words. 
  Once we have a word, computing its size is easy, 
  but incrementing the count for words of that size is slightly trickier. 
  If we initialize counts as

counts = {}

we will get an exception the first time counts[word.size] += 1 is executed. 
This is because that element doesn't' exist, so counts[word.size] returns nil, 
and nil cannot be added to 1. To fix this, we use the default value form of initializing counts:  

counts = Hash.new(0)

This forces any references to non-existing keys in counts to return 0.
=end # THEIR CODE
#=begin PATRICK MORAN'S CODE
A fellow student showed me the tally method which can be called on arrays to accomplish this exact task.
 Thought I would share cause it's' nifty:

def word_sizes(string)
  string.split.map { |w| w.size }.tally
end

That's' it! Wild!
=end # PATRICK MORAN'S CODE
#=begin FE
Take some time to read about Hash::new 
to learn about the different ways to initialize a hash with default values.
BOY HOWDY DO I NEED TO DO THIS!
=end