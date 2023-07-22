=begin
Write a method that takes a year as input and returns the century. 
The return value should be a string that begins with the century number, 
and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. 
  So, the years 1901-2000 comprise the 20th century.

Examples:
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'
century(12201) == '123rd'
=end
=begin PEDAC
main method with one input
generate sub methods
apply them with case statement

century(year)
suffix:
[-1] makes
0 = th
1 = st
2 = nd
3 = rd
4-9 = th
11-13 = th

numbers:
input < 100 = 1
input > 100 = [0] 

input.length <= 2 = 1st
input.length 3 do 10s     check first 1 and last 2
  if last 2 > 0 add 1 to first 1 (+1 or count? +=1)
  first 1 generates suffix regularly (make a sub method)
  0th, 1st, 2nd, 3rd, 4-9th

input.length 4 do teens   check first 2 and last 2
  if last 2 > 0 add 1 to first 2
  generate newsubmethod
  first 2 anything <= 20 = th
  first 2 anything > 20 = regularly(sub method)

input.length 5 do         check first 3 and last 2.  
  if last 2 > 0 add 1 to first 3
    check number [1,2]?(is this the right notation?) of first3
    use newsubmethod



=end # PEDAC
#=begin MY CODE
$number_string = 'fnord' # I WENT GLOBAL 

def singles(year) # FOR WHEN LENGTH == 3
  front = year.to_s[0]
  back = year.to_s[-2,2]
  front = front.to_i
  back = back.to_i
  front +=1 if back > 0 
  $number_string = front.to_s
end

def doubles(year)  # FOR WHEN LENGTH == 4
  front = year.to_s[0,2]
  back = year.to_s[-2,2]
  front = front.to_i
  back = back.to_i
  front +=1 if back > 0
  $number_string = front.to_s
end

def triples(year)  # FOR WHEN LENGTH == 5
  front = year.to_s[0,3]
  back = year.to_s[-2,2]
  front = front.to_i
  back = back.to_i
  front +=1 if back > 0
  $number_string = front.to_s
end

def suffix(number_string) 
  if (11..13).include?($number_string[-2,2].to_i)
    suffix = 'th' 
  elsif $number_string[-1] == '1'
    suffix = 'st'
  elsif $number_string[-1] == '2'
    suffix = 'nd'
  elsif $number_string[-1] == '3'
    suffix = 'rd'
  else suffix = 'th'
  end
end

def century(year)
  if year <= 100 
    "1st" 
  elsif year.to_s.length == 3 
    "#{singles(year)}" + "#{suffix($number_string)}"
  elsif year.to_s.length == 4 
    "#{doubles(year)}" + "#{suffix($number_string)}"
  elsif year.to_s.length == 5 
    "#{triples(year)}" + "#{suffix($number_string)}"
  else
    "Unforseeable Future. Invalid"
  end
end
# KEEP THIS
# def century(year)
#   if year <= 100 
#     "1st" 
#   elsif year > 100 && year < 1000 
#     "#{singles(year)}" + "#{suffix($number_string)}"
#   elsif year >= 1000 && year < 10000 
#     "#{doubles(year)}" + "#{suffix($number_string)}"
#   elsif year >= 10000 && year < 100000
#     "#{triples(year)}" + "#{suffix($number_string)}"
#   else
#     puts "Number Too High"
#   end
# end

puts "Please enter a year:"
year = gets.chomp.to_i
puts "#{year} is in the #{century(year)} century."
# p century(2000) == '20th'
# p century(2001) == '21st'
# p century(1965) == '20th'
# p century(256) == '3rd'
# p century(5) == '1st'
# p century(10103) == '102nd'
# p century(1052) == '11th'
# p century(1127) == '12th'
# p century(11201) == '113th'
# p century(12201) == '123rd'
#=end # MY CODE
=begin THEIR CODE

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

First, notice a pattern about a century. 
It is equal to the current year divided by 100 plus 1. 
The exception to this is if the year is some multiple of 100. 
In that case, the century is the current year divided by 100.

Next we need to understand which suffix to append for our century, 
the options being: 'th', 'nd', 'rd', 'st'. 
We decide which one to use by checking the last digit of the century. 
Though, before we do that, we do need to do one extra check. 
  If the century's value mod 100 ends in either 11, 12, or 13, 
  then we should return 'th'. 
  Any other time, we can return a suffix determined by our case statement 
    and the value of century % 10.

Finally, we combine the string representation of the century with the correct suffix, 
and we have our answer.
=end # THEIR CODE
=begin GRAHAM JARVIS' CODE
THIS IS SHORT AND SWEET, I DIG THE CONDITIONALS

def century(date)
  century = date / 100
  century += 1 unless (date % 100 == 0)
  century = century.to_s
  if century.end_with?("1") && !century.end_with?("11")
    suffix = "st"
  elsif century.end_with?("2") && !century.end_with?("12")
    suffix = "nd"
  elsif century.end_with?("3") && !century.end_with?("13")
    suffix = "rd"
  else
    suffix = "th"
  end
  century + suffix
end

=end # GRAHAM JARVIS' CODE