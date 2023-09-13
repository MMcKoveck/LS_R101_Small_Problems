#=begin
Write a method that takes a positive integer, n, as an argument, 
and displays a right triangle whose sides each have n stars. 
The hypotenuse of the triangle (the diagonal side in the images below) 
should have one end at the lower-left of the triangle, and the other end at the upper-right.

Examples:
triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********
=end
#=begin PEDAC
def triangle(num)
make an empty string
loop adding stars
print right justified strings num long
=end
#=begin MY CODE WORKS
def triangle_lr(num)
  string = ''
  num.times do 
    string << '*'
    puts string.rjust(num)
  end
end

def triangle_ll(num)
  string = ''
  num.times do 
    string << '*'
    puts string.ljust(num)
  end
end

def triangle_ur(num)
  string = '*' * num
  num.times do 
    puts string.rjust(num)
    string.slice!(string[0])
    end
end

def triangle_ul(num)
  string = '*' * num
  num.times do 
    puts string.ljust(num)
    string.slice!(string[0])
    end
end
=end
#=begin THEIR CODE
def triangle_lr2(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

def triangle_ll2(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts ('*' * stars) + (' ' * spaces)
    spaces -= 1
    stars += 1
  end
end

def triangle_ur2(num)
  stars = num
  spaces = 0
  
  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces += 1
    stars -= 1
  end
end

def triangle_ul2(num)
  spaces = 0
  stars = num

  num.times do |n|
    puts ('*' * stars) + (' ' * spaces)
    spaces += 1
    stars -= 1
  end
end
=end # THEIR CODE
