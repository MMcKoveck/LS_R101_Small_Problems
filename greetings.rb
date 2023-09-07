#=begin
Create a method that takes 2 arguments, an array and a hash. 
The array will contain 2 or more elements that, when combined with adjoining spaces, 
will produce a person's' name. The hash will contain two keys, :title and :occupation, 
and the appropriate values. Your method should return a greeting that uses the person's' full name, 
and mentions the person's' title and occupation.

Example:
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> "Hello, John Q Doe! Nice to have a Master Plumber around."
=end
#=begin PEDAC
def greetings(array, hash)
  interpolate array.join hash values with string
end
=end
#=begin MY CODE WORKS
def greetings(array, hash)
  "Hello, #{array.join(' ')}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end
=end
#=begin THEIR CODE
def greetings(name, status)
  "Hello, #{name.join(' ')}! Nice to have a #{status[:title]} #{status[:occupation]} around."
end

We have two variables here, an Array and a Hash. We can use Array.join on the Array, 
and supply it with a ' ' to change the Array into a full name with appropriate spacing. 
For the Hash, we simply access the items by their keys.

Finally we use string interpolation to combine everything into a single string 
and allow the method to return it automatically.
=end

#=begin FE
This method doesn't' actually pass rubocop! https://rubocop.org #INSTALLED IN VS CODE - NOT WORKING
What is the best way to shorten the lines in this method so it 
doesn't' exceed the 80 maximum characters to a line?

def greetings(a, h)
  "Hello, #{a.join(' ')}! Nice to have a #{h[:title]} #{h[:occupation]} around."
end
