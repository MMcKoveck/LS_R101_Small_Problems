=begin
Create a method that takes two arguments, 
multiplies them together, and returns the result.
Example:
multiply(5, 3) == 15
=end 
#=begin MY CODE
def multiply(a, b)
  a * b
end
#=end
=begin FE
The current implementation uses the * operator,
 which behaves differently depending on what the left hand expression is. 
 For example:
5 * 2       # => 10
"hi" * 2   # => "hihi"
For fun: what happens if the first argument is an Array? 
multiply([1,2,3], 4) # => [1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3]
the array is multiplied and returned as a single array.
multiply(4, [3,2,1]) # => ERROR!!!!
Array can't be coerced into Integer (TypeError
so the right side of the * MUST BE AN INTEGER!!!
=end
