#=begin
Write a method that returns a list of all substrings of a string. 
The returned list should be ordered by where in the string the substring begins. 
This means that all substrings that start at position 0 should come first, 
then all substrings that start at position 1, and so on. 
Since multiple substrings will occur at each position, 
the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous exercise:

Examples:

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
=end
#=begin PEDAC
Use leading_substrings
add a loop
remove string[0] and use l_s again
until empty
update container array
update index counter
#=begin MY CODE WORKS!

def substrings(string)
  result = []
  idx = 0
  array = []
  loop do                # ADD A LOOP TO ADD FUNCTIONALITY
    string.length.times do 
      array << string[idx]
      idx += 1
      result << array.join
    end
    array = []           # NEED TO RESET THE ARRAY
    idx = 0              # NEED TO RESET THE COUNTER
    string.slice!(0)     # NEED TO AMEND THE STRING
    break if string.length == 0 # NEED TO EXIT LOOP
  end
  result
end

# TRY TO REFACTOR THIS 
def substrings(string)
  array = []
  result = []
  loop do                # ADD A LOOP TO ADD FUNCTIONALITY
    string.length.times do |idx|
      array << string[0..idx]
      result << array[idx]
    end
    array = []           # NEED TO RESET THE ARRAY
    string.slice!(0)     # NEED TO AMEND THE STRING
    break if string.length == 0 # NEED TO EXIT LOOP
  end
  p result
end

# USING THEIR OLD CODE
def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index| # WHY IS IT .size - 1 ? OH, BECAUSE IT'S .upto STARTING AT 0. I CHOSE string.length.times
    result << string[0..index] # THIS IS A RANGE FROM INDEX[0] UPTO & INCLUDING index 
  end                          # index increases with each iteration so no need for a counter
  result                       # I LIKE THIS! REMEMBER TO USE IT!
end
# MY VERSION OF THEIR CODE WORKS!
def substrings(string)
  result = []
  loop do
    0.upto(string.size - 1) do |index|
      result << string[0..index]
    end
    string.slice!(0)
    break if string.length == 0
  end
  result
end
# LOOKS LIKE I DON'T' NEED THAT EXTRA ARRAY
# MINE RE REFACTORED
def substrings(string)
  result = []
  loop do
    string.length.times do |idx|
      result << string[0..idx]
    end
    string.slice!(0)
    break if string.length == 0
  end
  result
end
#=begin THEIR CODE
OOOOOOOHHHHHHHHH THEY MEANT TO KEEP THE leading_substrings METHOD INTACT AND USE IT!
def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end


# THIS IS ME REFACTORED AND USING l_s  
def leading_substrings(string)
  result = []
  string.length.times {|idx| result << string[0..idx]}
  result
end

def substrings(string)
  result = []
  loop do
    result << leading_substrings(string)
    string.slice!(0)
    break if string.length == 0
  end
  result.flatten(1)
end
# USING Array.concat INSTEAD OF << SO NO NEED TO FLATTEN!
def substrings(string)
  result = []
  loop do
    result.concat(leading_substrings(string))
    string.slice!(0)
    break if string.length == 0
  end
  result
end

# MINE RE RE REFACTORED WITHOUT SUB METHOD
def substrings(string)
  result = []
  loop do
    string.length.times {|idx| result << string[0..idx]}
    string.slice!(0)
    break if string.length == 0
  end
  result
end