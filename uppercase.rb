=begin
Write a method that takes a string argument, 
and returns true if all of the alphabetic characters inside the string are uppercase, 
false otherwise. Characters that are not alphabetic should be ignored.

ex:
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

=end
=begin PEDAC
take input string
upcase it and compare it to original

=end # PEDAC
#=begin MY CODE
def uppercase?(string)
  string == string.upcase
end
#=end # MY CODE
# THEIR CODE IS EXACTLY THE SAME
=begin FE
Food for thought: in our examples, we show that uppercase? 
should return true if the argument is an empty string. 
Would it make sense to return false instead? Why or why not?

See Sedonia Steininger again 
Her code:
def uppercase?(string)
  string == string.upcase(:ascii) #NOTE THE (:ascii) ARGUMENT
end

https://docs.ruby-lang.org/en/3.2/case_mapping_rdoc.html#label-Options+for+Case+Mapping
:ascii: ASCII-only mapping: 
uppercase letters (‘A’..‘Z’) are mapped to lowercase letters (‘a’..‘z); 
other characters are not changed

s = "Foo \u00D8 \u00F8 Bar" # => "Foo Ø ø Bar"
s.upcase                    # => "FOO Ø Ø BAR"
s.downcase                  # => "foo ø ø bar"
s.upcase(:ascii)            # => "FOO Ø ø BAR"
s.downcase(:ascii)          # => "foo Ø ø bar"


as well as 
Bob Rodes
So Jung Oh
For theory confirmation
and a bit of 
Christopher Perkins
for why confirmation

=end