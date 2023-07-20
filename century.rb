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
#=begin PEDAC
method with one input
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

