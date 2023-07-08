=begin
def print_in_box(input)
dashes = ''
spaces = ''
input.length {|char| char.each dashes << '-'}
puts "+-#{dashes}-+"
puts "| #{spaces} |"
puts "| #{input} |"
puts "| #{spaces} |"
puts "+-#{dashes}-+"
end

input.each {|char| dashes << '-'}
NOPE
=end
def print_in_box(input)
dashes = ''
spaces = ''
input.each_char {|char| dashes << '-'}
input.each_char {|char| spaces << ' '}
puts "+-#{dashes}-+"
puts "| #{spaces} |"
puts "| #{input} |"
puts "| #{spaces} |"
puts "+-#{dashes}-+"
end

# BEGIN THEIR CODE
def print_in_box(message)
   horizontal_rule = "+#{'-' * (message.size + 2)}+"
   empty_line = "|#{' ' * (message.size + 2)}|"

   puts horizontal_rule
   puts empty_line
   puts "| #{message} |"
   puts empty_line
   puts horizontal_rule
end
# WHAT IF I ASSIGNED dashes AND spaces WITH THE BLOCK LINES?
=begin
def print_in_box(input)
dashes = input.each_char {|char| dashes << '-'}
spaces = input.each_char {|char| spaces << ' '}
puts "+-#{dashes}-+"
puts "| #{spaces} |"
puts "| #{input} |"
puts "| #{spaces} |"
puts "+-#{dashes}-+"
end
=end
# NOPE! GOTTA ESTABLISH THEM FIRST!
=begin
FURTHER EXPLORATION
Modify this method so it will truncate the message 
if it will be too wide to fit inside a standard terminal window 
  (80 columns, including the sides of the box). 
  For a real challenge, try word wrapping very long messages 
  so they appear on multiple lines, but still within a box.

  if input > 76 make input2 
    max length?
    center new line?     'hello'.center(10) #=> "  hello   "    input2.center(input)
    if > 76, divide by 2 and make 2 shorter lines or just add leftovers to new?