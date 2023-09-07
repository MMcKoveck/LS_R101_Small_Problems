#=begin
Write a method that takes a first name, a space, and a last name passed as a single String argument, 
and returns a string that contains the last name, a comma, a space, and the first name.

Examples:
swap_name('Joe Roberts') == 'Roberts, Joe'
=end
#=begin PEDAC
split string
interpolate elements []

=end
#=begin MY CODE WORKS
def swap_name(string)
  array = string.split # DO I NEED TO DO THIS STEP?
  "#{array[-1]}, #{array[0]}"
end
# THIS WORKS !
def swap_name(string)
  "#{string.split[-1]}, #{string.split[0]}"
end
=end
#=begin THEIR CODE USES OTHER CHAINED METHODS
def swap_name(name)
  name.split(' ').reverse.join(', ')
end

The method is given a full name as a string. 
Since we know the name is divided by a space we can use String.split with an argument of (' '). 
This gives us an array ['Joe', 'Roberts'].

We then use Array.reverse to give us ['Roberts', 'Joe'] and, finally, 
we use Array.join with the comma and the space (', ') giving us the desired result.
=end
