#=begin
Write a method that takes a string, and returns a new string in which every character is doubled.

Examples:
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''
=end
#=begin PEDAC
def repeater(string)
  make empty receiver string
  loop
  take first char
  put it in receiver string 
  put it in that string again
  delete the char
  go until string.length == 0
  return receiver string
end
=end PEDAC
#=begin MY CODE
def repeater(string)
  dubs = ''
  loop do
    dubs << (string.chr)
    dubs << (string.chr)
    string.delete!(string[0])
    break if string.length == 0
  end
  dubs
end
# GETTING WEIRD ERROR
irb(main):309:0> repeater("Good job!")
=> "GGoodd  jjbb!!"
# SO TRYING ARRAY WORKS!
def repeater(string)
  dubs = []
  array = string.chars
  loop do
    dubs << (array[0])
    dubs << (array[0])
    array.shift
    break if array.size == 0
  end
  dubs.join
end
=end
#=begin THEIR CODE
def repeater(string)
  result = ''
  string.each_char do |char|
    result << char << char # HOW DO YOU KNOW TO DO THIS?!
  end
  result
end

This solution is straightforward. We initialize a result string, 
then iterate through the original string while appending each character to the result 2 times.
 Finally, we return the result string.
# HOW DO YOU KNOW WHEN YOU CAN DO THAT!?!?!?!?
#=begin CODY'S CODE
def repeater(str)
  str.chars.map { |char| char * 2}.join
end

def repeater(str)
  str.split("").map { |char| char * 2}.join
end

def repeater(str)
  str.chars.inject([]) { |result, x| result << x * 2}.join
end

def repeater(str)
  str.chars.inject("") { |result, x| result << x * 2}
end

#Did not remember #zip. Thank you Mitch
def repeater(str)
  str.chars.zip(str.chars).join
end
=end # CODY'S' CODE
