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