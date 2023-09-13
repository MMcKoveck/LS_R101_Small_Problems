#=begin
The || operator returns a truthy value if either or both of its operands are truthy. 
If both operands are falsey, it returns a falsey value. 
The && operator returns a truthy value if both of its operands are truthy, 
and a falsey value if either operand is falsey. 
This works great until you need only one of two conditions to be truthy, 
the so-called exclusive or.

In this exercise, you will write a method named xor that takes two arguments, 
and returns true if exactly one of its arguments is truthy, false otherwise. 
Note that we are looking for a boolean result instead of a truthy/falsy value 
as returned by || and &&.

Examples:

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false
The tests above should print true.
=end
#=begin PEDAC
def xor?(bool1, bool2)
  T : F == T
  F : T == T
  T : T == F
  F : F == F



  yes if yes && no || no && yes
  true if (bool1 && !bool2) || (!bool1 && bool2)
#=begin MY CODE WORKS!

def xor?(bool1, bool2)
  (bool1 && !bool2) || (!bool1 && bool2) ? true : false
end
=end
#=begin THEIR CODE
A shorter version of this method is:
def xor?(value1, value2)
  !!((value1 && !value2) || (value2 && !value1))
end

This is more idiomatic ruby than the first solution, 
but it does take a little more effort to figure out what is going on. 
Note that this solution requires !! to force the return value to a boolean.
=end
#=begin MITCH MILLS'' CODE! 
def xor?(left, right)
  !!left == !right
end

p xor?(false, true) == true
p xor?(42, nil) == true
p xor?(['a', 'b', 'c'], {a: 1, b: 2, c: 3}) == false
p xor?('This is truthy', (puts "This is truthy")) == true
p xor?([1, 2, 3].include?(4), 5.odd?) == true

When comparing two expressions that evaluate to true or false, there are four possible combinations:

true, true
false, true
true, false
false, false

With the && operator, if the first operand evaluates to false, 
the second operand doesn't' need to be evaluated to know the outcome.

With the || operator, if the first operand evaluates to true, 
the second operand doesn't' need to be evaluated to know the outcome.

But with an exclusive-or operator, whether the first operand evaluates to true or false, 
we still need to evaluate the second operand to know the outcome, 
so short-circuit evaluation doesn't' make sense.
=end