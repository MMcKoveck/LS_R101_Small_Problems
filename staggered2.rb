#=begin
Modify the method from the previous exercise so it ignores non-alphabetic characters 
when determining whether it should uppercase or lowercase each letter. 
  The non-alphabetic characters should still be included in the return value; 
  they just don't' count when toggling the desired case.

Example:
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
=end
#=begin PEDAC
def staggered_case(string)
  add downcase
  same as before but add && =~ /[a-z]/


=end # PEDAC
#=begin MY CODE
def staggered_case(string)
  result = ''
  need_upper = true
  string.downcase.chars.each do |char|
    if char =~ /[a-z]/ && need_upper
      result += char.upcase
      need_upper = !need_upper
    elsif char =~ /[a-z]/ && !need_upper
      result += char.downcase
      need_upper = !need_upper
    else
      result += char
    end 
  end
  result
end

=end # MY CODE
#=begin THEIR CODE
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

This solution is very similar to the previous solution; 
the only difference is that we need to avoid changing need_upper 
when processing non-alphabetic characters. 
  We use a simple regular expression with the /i flag (ignore case) to detect letters.
=end
#=begin FE
Modify this method so the caller can determine whether non-alphabetic characters 
should be counted when determining the upper/lowercase state. 
That is, you want a method that can perform the same actions that this method does, 
or operates like the previous version.

Hint: Use a keyword argument.
# THEIRS FE
def staggered_case(string, skip = true)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
      need_upper = !need_upper if skip == false
    end
  end
  p result
end

# MINE FE
def staggered_case(string, skip = true)
  result = ''
  need_upper = true
  string.downcase.chars.each do |char|
    if char =~ /[a-z]/ && need_upper
      result += char.upcase
      need_upper = !need_upper
    elsif char =~ /[a-z]/ && !need_upper
      result += char
      need_upper = !need_upper
    else
      result += char
      need_upper = !need_upper if skip == false
    end 
  end
  result
end

=end # FE
