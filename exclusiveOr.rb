=begin
The || operator returns a truthy value if either or both of its operands are truthy. 
If both operands are falsey, it returns a falsey value. 
The && operator returns a truthy value if both of its operands are truthy, 
and a falsey value if either operand is falsey. 
This works great until you need only one of two conditions to be truthy, 
the so-called exclusive or.

In this exercise, you will write a method named xor that takes two arguments, 
and returns true if exactly one of its arguments is truthy, 
false otherwise. 
Note that we are looking for a boolean result instead of a truthy/falsy value 
as returned by || and &&.

Examples:
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false
=end
=begin PEDAC
(||)||(||) ?

one false, one true == true
one true, one false == true
one true, one true == false         &&
one false, one false == false       &&

if (false && false) 
  return false
elsif (true && true) 
  return false
else true

=end # PEDAC
#=begin MY CODE

def xor?(first, second)
  if !first && !second
    return false
  elsif first && second
    return false
  else true
  end
end

#=end # MY CODE
=begin THEIR CODE

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

methods whose name ends in a ? 
should usually only return the explicit true and false values.

A shorter version of this method is:

def xor?(value1, value2)
  !!((value1 && !value2) || (value2 && !value1))
end

This is more idiomatic ruby than the first solution, 
but it does take a little more effort to figure out what is going on.
Note that this solution requires !! to force the return value to a boolean.

THERE IS SO MUCH MORE! EXPLORE ^
=end