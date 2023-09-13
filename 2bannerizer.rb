#=begin
Write a method that will take a short line of text, and print it within a box.

Example:
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
print_in_box('')
+--+
|  |
|  |
|  |
+--+
You may assume that the input will always fit in your terminal window.
=end
#=begin PEDAC
def bannerizer(string)
make 5 lines to start (use interpolation)
string 1: add "+-", add string.length "-", add "-+"
string 2: add "| ", add s.l " ", add " |" 
string 3: add "| ", add string, add " |" 
  (loop an additional string lines as needed if too long >76)
  (make sure theyre all centered with blank spaces)
string 4: add "| ", add s.l " ", add " |" 
string 5: add "+-", add string.length "-", add "-+"
ADD PEDAC
maybe if string > 76, split string by spaces
put 1st half of array joined in center
put subsequent half of array joined in next line
going to need to make line 3 part of loop always
=end
#=begin MY CODE WORKS FOR SMALL STRINGS
def bannerizer(string)
  puts "+-" + "-" * string.length + "-+"
  puts "| " + " " * string.length + " |"
  puts "| " + string + " |"
  puts "| " + " " * string.length + " |"
  puts "+-" + "-" * string.length + "-+"
end

# NEW CODE FOR LARGER STRINGS
def bannerizer(string)
  #if string.length > 76
    array = string.split
    lines = string.length / 76.0
    lines = lines.round(0) + 1
    ranges = array.length / lines
    line1 = array[0..ranges-1].join(' ')
    line2 = array[ranges..ranges*2-1].join(' ') if lines > 1
    line3 = array[ranges*2..ranges*3-1].join(' ') if lines > 2
    line4 = array[ranges*3..ranges*4-1].join(' ') if lines > 3
    line5 = array[ranges*4..ranges*5-1].join(' ') if lines > 4
    if string.length > 76
      array_width = line2.length > line1.length ? line2.length : line1.length
    end
    width = string.length < 76 ? string.length : array_width
    horiz = "+-" + "-" * width + "-+"
    vert = "| " + " " * width + " |"
    
  puts "* THIS IS LINE 1: *#{line1}*"
  puts "* THIS IS LINE 2: *#{line2}*"
  puts "* THIS IS LINE 3: *#{line3}*"
  puts "* THIS IS LINE 4: *#{line4}*"
  puts "* THIS IS LINE 5: *#{line5}*"
  puts horiz
  puts vert
  puts "| #{string.length < 76 ? string.center(string.length) : line1.center(width)} |"
  puts "| #{line2.center(width)} |" if lines > 1
  puts "| #{line3.center(width)} |" if lines > 2
  puts "| #{line4.center(width)} |" if lines > 3
  puts "| #{line5.center(width)} |" if lines > 4
  # puts "| #{line5.center(width)} |" if string.length > 211 STRING.LENGTH INSTEAD OF lines WORKED(kinda)
  # MAYBE SHIFT THE ARRAY TO A LINE ARRAY UNTIL A CERTAIN SIZE
  # MAKE NEW LINE ARRAYS ACCORDINGLY

  puts vert
  puts horiz

end



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

=end
=begin NEW PEDAC
if input < 76 print 1 line
if input > 76 add second line
input[0-76]
input[77-154]
need a size limiter
=end #NEW PEDAC
def print_in_box(input)
dashes = ''
spaces = ''
input.each_char do |char| 
  dashes << '-'
  break if dashes.size == 76
end
input.each_char do |char| 
  spaces << ' '
  break if spaces.size == 76
end
puts "+-#{dashes}-+"
puts "| #{spaces} |"
puts "| #{input[0, 76]} |" # if input.size < 76 #always print upto 76
puts "| #{input[76, 76].center(76)} |" if input.size > 76 #exist only if > 76   center?
puts "| #{input[152, 76].center(76)} |" if input.size > 152
puts "| #{spaces} |"
puts "+-#{dashes}-+"
end
puts "Enter some text: "
input = gets.chomp
print_in_box(input)




### THIS WORKS IN IRB BUT MAYBE SHOULD DO AN ARRAY THING AS MENTIONED
### BECAUSE A NEW WAY OF DETERMINING LINES IS REALLY NEEDED
irb(main):2128:1* def bannerizer(string)gth / lines
irb(main):2129:1*   #if string.length > 76
irb(main):2130:1*     array = string.split
irb(main):2131:1*     lines = string.length / 76.0
irb(main):2132:1*     lines = lines.round(0) + 1
irb(main):2133:1*     ranges = array.length / lines
irb(main):2134:1*     line1 = array[0..ranges-1].join(' ')
irb(main):2135:1*     line2 = array[ranges..ranges*2-1].join(' ') if string.length > 76
irb(main):2136:1*     line3 = array[ranges*2..ranges*3-1].join(' ') if string.length > 152
irb(main):2137:1*     line4 = array[ranges*3..ranges*4-1].join(' ') if string.length > 210
irb(main):2138:1*     line5 = array[ranges*4..ranges*5-1].join(' ') if string.length > 211
irb(main):2139:2*     if string.length > 76
irb(main):2140:2*       array_width = line2.length > line1.length ? line2.length : line1.length
irb(main):2141:1*     end
irb(main):2142:1*     width = string.length < 76 ? string.length : array_width
irb(main):2143:1*     horiz = "+-" + "-" * width + "-+"
irb(main):2144:1*     vert = "| " + " " * width + " |"
irb(main):2145:1*     
irb(main):2146:1*   puts "* THIS IS LINE 1: *#{line1}*"
irb(main):2147:1*   puts "* THIS IS LINE 2: *#{line2}*"
irb(main):2148:1*   puts "* THIS IS LINE 3: *#{line3}*"
irb(main):2149:1*   puts "* THIS IS LINE 4: *#{line4}*"
irb(main):2150:1*   puts "* THIS IS LINE 5: *#{line5}*"
irb(main):2151:1*   puts horiz
irb(main):2152:1*   puts vert
irb(main):2153:1*   puts "| #{string.length < 76 ? string.center(string.length) : line1.center(width)} |"
irb(main):2154:1*   puts "| #{line2.center(width)} |" if string.length > 76
irb(main):2155:1*   puts "| #{line3.center(width)} |" if string.length > 152
irb(main):2156:1*   puts "| #{line4.center(width)} |" if string.length > 210
irb(main):2157:1*   puts "| #{line5.center(width)} |" if string.length > 211
irb(main):2158:1*   puts vert
irb(main):2159:1*   puts horiz
irb(main):2160:1* 
irb(main):2161:0> end
=> :bannerizer
irb(main):2162:0> bannerizer(string)
* THIS IS LINE 1: *this is the string for the first line and pretty*
* THIS IS LINE 2: *soon will be the second line and eventually the third*
* THIS IS LINE 3: *line.this is the string for the first line and pretty*
* THIS IS LINE 4: *soon will be the second line and eventually the third*
* THIS IS LINE 5: *line.*                               
+-------------------------------------------------------+
|                                                       |
|   this is the string for the first line and pretty    |
| soon will be the second line and eventually the third |
| line.this is the string for the first line and pretty |
| soon will be the second line and eventually the third |
|                         line.                         |
|                                                       |
+-------------------------------------------------------+