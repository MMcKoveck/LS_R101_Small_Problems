=begin
Create a simple tip calculator. 
The program should prompt for a bill amount and a tip rate. 
The program must compute the tip and then display both the tip and the total 
amount of the bill.

Example:
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0
=end
=begin PEDAC
get inputs
calculate tip
display tip
add tip to bill
display total
=end #PEDAC
#=begin MY CODE

puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
tip_percent = gets.chomp.to_f
tip = bill * (tip_percent * 0.01) # MAYBE PUT .round(2) here instead?
puts "The tip is #{tip.round(2)}"
puts "The total is #{(tip + bill).round(2)}"

#=end # MY CODE
=begin THEIR CODE
print 'What is the bill? '
bill = gets.chomp
bill = bill.to_f

print 'What is the tip percentage? '
percentage = gets.chomp
percentage = percentage.to_f

tip   = (bill * (percentage / 100)).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{total}"

Discussion

We first obtain the amount of the bill from the user,
 not worrying too much about data validity for this simple problem. 
 Then we get the tip percentage.

Next, we calculate the actual tip, and the total bill, then output the results.

Further Exploration

Our solution prints the results as $30.0 and $230.0 
instead of the more usual $30.00 and $230.00. 
Modify your solution so it always prints the results with 2 decimal places.

Hint: You will likely need Kernel#format for this.
=end
#=begin FE CODE
puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
tip_percent = gets.chomp.to_f
tip = (bill * (tip_percent * 0.01)).round(2) # MAYBE PUT .round(2) here instead?
total = (tip + bill).round(2)
tips = tip.to_s
totals = total.to_s
tips << "0" if tips[-2] == "."
totals << "0" if totals[-2] == "."

puts "The tip is #{tips}"
puts "The total is #{totals}"
#=end # FE CODE
#bills = bill.to_s
#bills << "0" if bills[-2] == "." 
# BILLS ARE IRRELEVANT HERE
=begin FE 2
sprintf INFO
f/F are precision specifiers
the precision is the number of digits after the decimal point to be written
sprintf('%.2f', 3.14159)  # => "3.14"
sprintf('%.10f', 3.14159) # => "3.1415900000"
=end

puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
tip_percent = gets.chomp.to_f
tip = (bill * (tip_percent * 0.01)).round(2) # MAYBE PUT .round(2) here instead?
total = (tip + bill).round(2)

puts "The tip is #{sprintf("%.2f", tip)}"
puts "The total is #{sprintf("%.2f", total)}"

#=end # FE 2