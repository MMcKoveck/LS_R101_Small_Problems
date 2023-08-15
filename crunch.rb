#=begin
Write a method that takes a string argument and returns a new string that contains
 the value of the original string with all consecutive duplicate characters 
 collapsed into a single character. You may not use 'String#squeeze or String#squeeze!.'

Examples:
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

=end
#=begin PEDAC
=end # PEDAC
#=begin MY CODE
=end # MY CODE
#=begin THEIR CODE

def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end

This one isn't' too bad. We have to go through each character of this string 
and check for any consecutive duplicate characters. The plan is to build the return value, 
character by character, in the string referenced by crunch_text. 
With that in mind, we use index to track our position in text.

On each iteration of our loop, we check whether the current indexed character is equal to 
the next character in text. If the characters are the same, we do nothing but 
advance the index to the next character in text. 
Otherwise, we append the current character to crunch_text and increment the index.
=end # THEIR CODE
#=begin FE
You may have noticed that we continue iterating until index points past the end of the string. 
As a result, on the last iteration text[index] is the last character in text, while text[index + 1] 
is nil. Why do we do this? What happens if we stop iterating when index is equal to text.length?

Can you determine why we didn't use String#each_char or String#chars to iterate through the string? 
How would you update this method to use String#each_char or String#chars?

You can solve this problem using regular expressions (see the Regexp class documentation). 
For a fun challenge, give this a try with regular expressions. If you haven't already read our book, 
Introduction to Regular Expressions, you may want to keep it handy if you try this challenge.

REGEX IS A BEAR AND THERE IS STILL A LOT TO LEARN THERE
=begin Darragh O'Carroll's CODE

def regex_crunch(string)
  string.gsub(/(\w)\1*/, '\1')
end

and for the regex, use back referencing (\1) with *(zero or more of the back referenced character) 
to replace with a single occurrence of the character ('\1').
=end Darragh O'Carroll's CODE
Can you think of other solutions besides regular expressions?
=end # FE