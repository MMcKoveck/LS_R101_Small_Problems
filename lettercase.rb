#=begin
Write a method that takes a string, and then returns a hash that contains 3 entries: 
one represents the number of characters in the string that are lowercase letters, 
one represents the number of characters that are uppercase letters, 
and one represents the number of characters that are neither.

Examples:
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

=end
#=begin PEDAC
def letter_case_count(string)
regex for lowercase /[a-z]/
regex for uppercase /[A-Z]/
regex for neither /[^a-zA-Z]/
make a hash, keys are l: u: n:
            values are string/[regex]/.size.to_i #not this
                       string.count "a-z"
                       string.count "A-Z"
                       string.count "^a-zA-Z"
return hash                       
=end # PEDAC
#=begin MY CODE WORKS!
def letter_case_count(string)
  hash = {
    lowercase: (string.count "a-z"),
    uppercase: (string.count "A-Z"),
    neither: (string.count "^a-zA-Z")
  }
end

=end # MY CODE
#=begin THEIR CODE



=end # THEIR CODE