#=begin
Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.
=end
#=begin PEDAC
(1..99).each {|x| puts x if x.odd?}
1.upto(99) {|x| puts x if x.odd?}
=end
#=begin MY CODE WORKS

(1..99).each {|x| puts x if x.even?}
1.upto(99) {|x| puts x if x.even?}
=end
