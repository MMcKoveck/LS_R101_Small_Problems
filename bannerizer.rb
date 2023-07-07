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