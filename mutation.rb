What will the following code print, and why? Don't' run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo

Wait a minute! We changed Curly to CURLY, Shemp to SHEMP, and Chico to CHICO in array1. 
How'd' those changes end up in array2 as well?

The answer lies in the fact that the first each loop simply copies a bunch of references from array1 
to array2. When that first loop completes, both arrays not only contain the same values, 
they contain the same String objects. 
If you modify one of those Strings, that modification will show up in both Arrays.

If this answer surprises you, 
reread the section on Pass by Reference vs Pass by Value in Lesson 2 of Programming Foundations. 
To be successful with ruby, you must understand how values are passed around, 
and what mutation means for those values.

#=begin FE
How can this feature of ruby get you in trouble? How can you avoid it?

For even more information on this topic, see these Blog posts:

Variable References and Mutability of Ruby Objects
https://launchschool.com/blog/references-and-mutability-in-ruby

Mutating and Non-Mutating Methods in Ruby
https://launchschool.com/blog/mutating-and-non-mutating-methods

Object Passing in Ruby - Pass by Reference or Pass by Value
https://launchschool.com/blog/object-passing-in-ruby