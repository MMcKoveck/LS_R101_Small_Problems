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
"because...everything evaluates to something truthy or falsy using the !! operator"
THERE IS SO MUCH MORE! EXPLORE ^
=end
=begin GRAHAM JARVIS' CODE
def xor?(x, y)
  x != y
endIt can be adapted to make it work with non-boolean expressions 
(i.e. for all expressions, because in Ruby everything evaluates to something truthy or falsy) 
  using the !! operator:
def xor?(x, y)
  !!x != !!y
end

p xor?(a = 5, nil) == true  # true
p xor?(false, nil) == false # true
=end
=begin CODY MCKEEFRY'S CODE
def xor?(arg1, arg2)
  return false if(!!arg1 == !!arg2)
  true
end
=end

=begin MAREK MARTIN'S CODE
def xor?(expr1, expr2)
  if (!expr1 && expr2) || (expr1 && !expr2) 
    true
  else 
    false
  end 
end 
#or
def xor?(expr1, expr2)
  expr1 ^ expr2
end 
# I really like the simplicity of this one and it's use is for exactly this question 
# with its specific arguments given
=end
=begin ^
Some of you may be tempted to use the ^ operator for this exercise. 
The ^ operator is a bit-wise operator for performing exclusive-or bit operations. 
In some cases, you can use ^ as an exclusive-or operator. 
However, it only works properly when both values are numeric or both are boolean
 -- anything else may lead to unexpected results. 
 For instance, you might expect the following expression to return a truthy value:

 'a' ^ false

It doesn't. Instead, it raises an error. 
Confusingly, the following returns a truthy value:

false ^ 'a'

FROM DOCS:

false ^ obj → true or false
nil ^ obj → true or false
Exclusive Or—If obj is nil or false, returns false; otherwise, returns true.

=end